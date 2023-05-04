//import UIKit
//import CoreData
//
//@UIApplicationMain
//class AppDelegate: UIResponder, UIApplicationDelegate {
//
//    var window: UIWindow?
//    lazy var persistentContainer: NSPersistentContainer = {
//        let container = NSPersistentContainer(name: "MyApp")
//        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
//            if let error = error as NSError? {
//                fatalError("Gagal memuat persistent store: \(error), \(error.userInfo)")
//            }
//        })
//        return container
//    }()
//    
//    func applicationDidEnterBackground(_ application: UIApplication) {
//        self.saveContext()
//    }
//
//    func applicationWillTerminate(_ application: UIApplication) {
//        self.saveContext()
//    }
//
//    func saveContext () {
//        let context = persistentContainer.viewContext
//        if context.hasChanges {
//            do {
//                try context.save()
//            } catch {
//                let nserror = error as NSError
//                fatalError("Gagal menyimpan data: \(nserror), \(nserror.userInfo)")
//            }
//        }
//    }
//}
