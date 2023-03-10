//
//  SignInView.swift
//  Maps
//
//  Created by Анастасия Лосикова on 2/9/23.
//

import UIKit

class SignInView: UIScrollView {

    // MARK: - Public properties

    // MARK: Subviews

    lazy var userNameTextField: UITextField = {
        let tf = UITextField()
        tf.autocorrectionType = .no
        return tf
    }()
    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.isSecureTextEntry = true
        tf.autocorrectionType = .no
        return tf
    }()

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    @available(*, unavailable) required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Private methods

    private func configureUI() {
        backgroundColor = .suplimentaryViewBackgroundColor
        addSubviews()
        setupConstraints()
    }

    private func addSubviews() {
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        userNameTextField.placeholder = NSLocalizedString("loginTextFieldPlaceholder", comment: "")
        userNameTextField.textColor = .userTextFieldTextColor
        userNameTextField.textAlignment = .left
        userNameTextField.font = .userTextFieldFont
        userNameTextField.backgroundColor = .userTextFieldTextBackgroundColor
        userNameTextField.layer.cornerRadius = .textFieldCornerRadius

        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.placeholder = NSLocalizedString("passwordTextFieldPlaceholder", comment: "")
        passwordTextField.textColor = .userTextFieldTextColor
        passwordTextField.textAlignment = .left
        passwordTextField.font = .userTextFieldFont
        passwordTextField.backgroundColor = .userTextFieldTextBackgroundColor
        passwordTextField.layer.cornerRadius = .textFieldCornerRadius

        addSubview(userNameTextField)
        addSubview(passwordTextField)
    }

    private func setupConstraints() {
        let safeArea = self.safeAreaLayoutGuide
        let indent: CGFloat = 21.0

        NSLayoutConstraint.activate([
            userNameTextField.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: indent),
            userNameTextField.leftAnchor.constraint(equalTo: safeArea.leftAnchor, constant: indent),
            userNameTextField.rightAnchor.constraint(equalTo: safeArea.rightAnchor, constant: -indent),

            passwordTextField.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: indent),
            passwordTextField.leftAnchor.constraint(equalTo: safeArea.leftAnchor, constant: indent),
            passwordTextField.rightAnchor.constraint(equalTo: safeArea.rightAnchor, constant: -indent)
        ])
    }

}
