//
//  ___FILENAME___
//  Project: ___PROJECTNAME___
//
//  Module: ___VARIABLE_productName___
//
//  By ___FULLUSERNAME___ ___DATE___
//  ___ORGANIZATIONNAME___ ___YEAR___
//

// MARK: Imports

import UIKit

// MARK: -

/// Used to initialize the ___VARIABLE_productName___ VIPER module
final class ___FILEBASENAMEASIDENTIFIER___: ModuleProtocol {

	// MARK: - Variables

	private(set) lazy var interactor: ___VARIABLE_productName___Interactor = {
		___VARIABLE_productName___Interactor()
	}()

	private(set) lazy var router: ___VARIABLE_productName___Router = {
		___VARIABLE_productName___Router()
	}()

	private(set) lazy var presenter: ___VARIABLE_productName___Presenter = {
		___VARIABLE_productName___Presenter(router: self.router, interactor: self.interactor)
	}()

	private(set) lazy var view: ___VARIABLE_productName___ViewController = {
		___VARIABLE_productName___ViewController(presenter: self.presenter)
	}()

	// MARK: - Module Protocol Variables

	var viewController: UIViewController {
		return view
	}

	// MARK: Inits

	init() {
		presenter.view = view
		router.viewController = view
		interactor.presenter = presenter
	}
}
