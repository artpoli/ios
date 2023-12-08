// swiftlint:disable:this file_name

import BitwardenSdk
import Foundation

@testable import BitwardenShared

extension Cipher {
    static func fixture(
        attachments: [Attachment]? = nil,
        card: Card? = nil,
        collectionIds: [String] = [],
        creationDate: DateTime = Date(),
        deletedDate: Date? = nil,
        edit: Bool = true,
        favorite: Bool = false,
        fields: [Field]? = nil,
        folderId: String? = nil,
        id: String? = nil,
        identity: Identity? = nil,
        key: String? = nil,
        localData: LocalData? = nil,
        login: BitwardenSdk.Login? = nil,
        name: String = "Bitwarden",
        notes: String? = nil,
        organizationId: String? = nil,
        organizationUseTotp: Bool = false,
        passwordHistory: [PasswordHistory]? = nil,
        reprompt: BitwardenSdk.CipherRepromptType = .none,
        revisionDate: Date = Date(),
        secureNote: SecureNote? = nil,
        type: BitwardenSdk.CipherType = .login,
        viewPassword: Bool = true
    ) -> Cipher {
        Cipher(
            id: id,
            organizationId: organizationId,
            folderId: folderId,
            collectionIds: collectionIds,
            key: key,
            name: name,
            notes: notes,
            type: type,
            login: login,
            identity: identity,
            card: card,
            secureNote: secureNote,
            favorite: favorite,
            reprompt: reprompt,
            organizationUseTotp: organizationUseTotp,
            edit: edit,
            viewPassword: viewPassword,
            localData: localData,
            attachments: attachments,
            fields: fields,
            passwordHistory: passwordHistory,
            creationDate: creationDate,
            deletedDate: deletedDate,
            revisionDate: revisionDate
        )
    }
}

extension CipherView {
    static func fixture(
        attachments: [AttachmentView]? = nil,
        card: CardView? = nil,
        collectionIds: [String] = [],
        creationDate: DateTime = Date(year: 2023, month: 11, day: 5, hour: 9, minute: 41),
        deletedDate: Date? = nil,
        edit: Bool = true,
        favorite: Bool = false,
        fields: [FieldView]? = nil,
        folderId: String? = nil,
        id: String? = nil,
        identity: IdentityView? = nil,
        key: String? = nil,
        localData: LocalDataView? = nil,
        login: BitwardenSdk.LoginView? = nil,
        name: String = "Bitwarden",
        notes: String? = nil,
        organizationId: String? = nil,
        organizationUseTotp: Bool = false,
        passwordHistory: [PasswordHistoryView]? = nil,
        reprompt: BitwardenSdk.CipherRepromptType = .none,
        revisionDate: Date = Date(year: 2023, month: 11, day: 5, hour: 9, minute: 41),
        secureNote: SecureNoteView? = nil,
        type: BitwardenSdk.CipherType = .login,
        viewPassword: Bool = true
    ) -> CipherView {
        CipherView(
            id: id,
            organizationId: organizationId,
            folderId: folderId,
            collectionIds: collectionIds,
            key: key,
            name: name,
            notes: notes,
            type: type,
            login: login,
            identity: identity,
            card: card,
            secureNote: secureNote,
            favorite: favorite,
            reprompt: reprompt,
            organizationUseTotp: organizationUseTotp,
            edit: edit,
            viewPassword: viewPassword,
            localData: localData,
            attachments: attachments,
            fields: fields,
            passwordHistory: passwordHistory,
            creationDate: creationDate,
            deletedDate: deletedDate,
            revisionDate: revisionDate
        )
    }

    static func loginFixture(
        attachments: [AttachmentView]? = nil,
        card: CardView? = nil,
        collectionIds: [String] = [],
        creationDate: DateTime = Date(year: 2023, month: 11, day: 5, hour: 9, minute: 41),
        deletedDate: Date? = nil,
        edit: Bool = true,
        favorite: Bool = false,
        fields: [FieldView]? = nil,
        folderId: String? = nil,
        id: String = "8675",
        identity: IdentityView? = nil,
        key: String? = nil,
        localData: LocalDataView? = nil,
        login: BitwardenSdk.LoginView = .fixture(),
        name: String = "Bitwarden",
        notes: String? = nil,
        organizationId: String? = nil,
        organizationUseTotp: Bool = false,
        passwordHistory: [PasswordHistoryView]? = nil,
        reprompt: BitwardenSdk.CipherRepromptType = .none,
        revisionDate: Date = Date(year: 2023, month: 11, day: 5, hour: 9, minute: 41),
        secureNote: SecureNoteView? = nil,
        type: BitwardenSdk.CipherType = .login,
        viewPassword: Bool = true
    ) -> CipherView {
        CipherView(
            id: id,
            organizationId: organizationId,
            folderId: folderId,
            collectionIds: collectionIds,
            key: key,
            name: name,
            notes: notes,
            type: type,
            login: login,
            identity: identity,
            card: card,
            secureNote: secureNote,
            favorite: favorite,
            reprompt: reprompt,
            organizationUseTotp: organizationUseTotp,
            edit: edit,
            viewPassword: viewPassword,
            localData: localData,
            attachments: attachments,
            fields: fields,
            passwordHistory: passwordHistory,
            creationDate: creationDate,
            deletedDate: deletedDate,
            revisionDate: revisionDate
        )
    }
}

extension BitwardenSdk.LoginView {
    static func fixture(
        password: String? = nil,
        passwordRevisionDate: DateTime? = nil,
        uris: [LoginUriView]? = nil,
        username: String? = nil,
        totp: String? = nil,
        autofillOnPageLoad: Bool? = nil
    ) -> BitwardenSdk.LoginView {
        BitwardenSdk.LoginView(
            username: username,
            password: password,
            passwordRevisionDate: passwordRevisionDate,
            uris: uris,
            totp: totp,
            autofillOnPageLoad: autofillOnPageLoad
        )
    }
}

extension PasswordHistoryView {
    static func fixture(
        password: String = "",
        lastUsedDate: Date = Date()
    ) -> PasswordHistoryView {
        PasswordHistoryView(
            password: password,
            lastUsedDate: lastUsedDate
        )
    }
}