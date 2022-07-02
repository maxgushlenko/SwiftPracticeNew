//
//  DecoratorBootcamp.swift
//  SwiftSandbox
//
//  Created by m4c5on on 12.06.22.
//

import Foundation

class DecoratorBootcamp {
    
    init() {
        
        let userInfoDataStorage = UserInfoDataStorage()
        
        let decryptDecorator = DecryptedDataStorageDecorator(with: userInfoDataStorage)
        let decryptedData = decryptDecorator.decrypt()
        
        let encryptedDecorator = EncryptedDataStorageDecorator(with: decryptDecorator)
        encryptedDecorator.encrypt()
        
        print()
        
    }
    
}

protocol DataStorage {
    func get() -> Data
}

class UserInfoDataStorage: DataStorage {
    
    func get() -> Data {
        return Data()
    }
    
}

protocol BaseDataStorageDecorator: DataStorage {
    
    var dataStorage: DataStorage { get }
    
    init(with dataStorage: DataStorage)
    
}

protocol DecryptDataStorageDecorator: BaseDataStorageDecorator {
    func decrypt() -> Data
}

protocol EncryptDataStorageDecorator: BaseDataStorageDecorator {
    func encrypt() -> Data
}

class EncryptedDataStorageDecorator: EncryptDataStorageDecorator {
    
    var dataStorage: DataStorage
    
    required init(with dataStorage: DataStorage) {
        self.dataStorage = dataStorage
    }
    
    func get() -> Data {
        print("Encrypt -> data -> get")
        return dataStorage.get()
    }
    
    func encrypt() -> Data {
        let dataStorageData = get()
        print("Data has encrypted")
        return dataStorageData
    }
}

class DecryptedDataStorageDecorator: DecryptDataStorageDecorator {
    
    var dataStorage: DataStorage
    
    required init(with dataStorage: DataStorage) {
        self.dataStorage = dataStorage
    }
    
    func get() -> Data {
        print("Decrypt -> data -> get")
        return dataStorage.get()
    }
    
    func decrypt() -> Data {
        let dataStorageData = get()
        print("Data has decrypted")
        return dataStorageData
    }
}


