import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class MediaSelected extends StatefulWidget {
  const MediaSelected({super.key});

  @override
  State<MediaSelected> createState() => _MediaSelectedState();
}

class _MediaSelectedState extends State<MediaSelected> {
  File? selectedImage;
  File? selectedVideo;
  VideoPlayerController? _videoController;

  // Pick Image
  Future<void> selectImage({required ImageSource source}) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: source);
    if (image != null) {
      selectedImage = File(image.path);
    } else {
      selectedImage = null;
    }
    setState(() {});
  }

  // Pick Video
  Future<void> selectVideo({required ImageSource source}) async {
    final ImagePicker picker = ImagePicker();
    final XFile? video = await picker.pickVideo(source: source);
    if (video != null) {
      selectedVideo = File(video.path);
      _videoController?.dispose();
      _videoController = VideoPlayerController.file(selectedVideo!)
        ..initialize().then((_) {
          setState(() {});
          _videoController!.play();
        });
    } else {
      selectedVideo = null;
    }
    setState(() {});
  }

  @override
  void dispose() {
    _videoController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Media Picker")),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Image preview
              selectedImage != null
                  ? Image.file(selectedImage!, width: 300, height: 300)
                  : Text("No Image Selected"),

              SizedBox(height: 20),

              // Video preview
              selectedVideo != null && _videoController != null
                  ? AspectRatio(
                      aspectRatio: _videoController!.value.aspectRatio,
                      child: VideoPlayer(_videoController!),
                    )
                  : Text("No Video Selected"),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Pick Media"),
                        actions: [
                          IconButton(
                            onPressed: () async {
                              await selectImage(source: ImageSource.camera);
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.camera_alt),
                          ),
                          IconButton(
                            onPressed: () async {
                              await selectImage(source: ImageSource.gallery);
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.photo),
                          ),
                          IconButton(
                            onPressed: () async {
                              await selectVideo(source: ImageSource.camera);
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.videocam),
                          ),
                          IconButton(
                            onPressed: () async {
                              await selectVideo(source: ImageSource.gallery);
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.video_library),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Pick Media"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
