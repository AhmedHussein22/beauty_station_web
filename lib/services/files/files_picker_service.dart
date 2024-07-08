import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class FilesPickerService {
  Future<PlatformFile?> pickFile({FileType? type, List<String>? allowedExtensions}) async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowedExtensions: allowedExtensions,
        allowMultiple: false,
        type: type ?? FileType.any,
      );
      if (result != null) {
        PlatformFile file = result.files.first;

        debugPrint('file.bytes=====================>${file.size / 1024 / 1024}');
        debugPrint(file.extension);
        debugPrint('file.name=====================>${file.name}');
        debugPrint("file.path=====================>${file.path}");

        return file;
      } else {
        return null;
      }
    } catch (e) {
      debugPrint("Error From Pick File==============$e");
      rethrow;
    }
  }

  Future<List<String>> pickMultipleFiles({FileType type = FileType.any}) async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        // allowedExtensions: ['jpg', 'pdf', 'doc'],
        type: type,
        allowMultiple: true,
      );
      if (result != null) {
        List<PlatformFile> files = result.files;
        List<String> filesPaths = [];
        for (var element in files) {
          filesPaths.add(element.path!);
        }
        return filesPaths;
      } else {
        return [];
      }
    } catch (e) {
      debugPrint("Error From Pick File==============$e");
      return [];
    }
  }
}
