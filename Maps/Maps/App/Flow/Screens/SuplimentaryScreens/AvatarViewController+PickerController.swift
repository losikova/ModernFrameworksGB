//
//  AvatarViewController+PickerController.swift
//  Maps
//
//  Created by Anastasia Losikova on 25.02.2023.
//

import UIKit

extension AvatarViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }

    func imagePickerController(
        _ picker: UIImagePickerController,
        didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]
    ) {
        guard let image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage else {
            guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
                return
            }
            PhotoStorageService.shared.saveImage(image: image, forKey: "avatar")
            publicAvatarView.userImageView.image = image
            return
        }
        PhotoStorageService.shared.saveImage(image: image, forKey: "avatar")
        publicAvatarView.userImageView.image = image

        picker.dismiss(animated: true, completion: nil)
    }
}
