//
//  CartViewController.swift
//  Tech Store App
//
//  Created by Vinicius Rodrigues on 11/17/24.
//

import UIKit

// Custom UICollectionViewCell class to define outlets for product details in each cell
class CartViewCell: UICollectionViewCell {
    @IBOutlet weak var cartImageView: UIImageView!
    @IBOutlet weak var cartProductName: UILabel!
    @IBOutlet weak var cartPrice: UILabel!
    @IBOutlet weak var cartQuantity: UILabel!
}

class CartViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return users[index].cart.count // Return the number of products added to the cart
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Create a cell
        let cell = collectionViewOL.dequeueReusableCell(withReuseIdentifier: "cartReusableCell", for: indexPath) as! CartViewCell
        
        // Populate a cell
        let product = users[index].cart[indexPath.item]
        cell.cartImageView.image = UIImage(named: product.image!)
        cell.cartProductName.text = product.productName
        cell.cartPrice.text = "Price: $\(product.price!)"
        cell.cartQuantity.text = "Quantity: 1"
        
        // Return the cell
        return cell
    }
    
    
    let pickupLocations = [
        "Tech Store App - Maryville",
        "Tech Store App - St. Joseph",
        "Tech Store App - Kansas City",
        "Tech Store App - St. Louis"
    ]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickupLocations.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickupLocations[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedLocation = pickupLocations[row]
    }
    
    var users = [User]()
    var index = Int()
    
    
    @IBOutlet weak var collectionViewOL: UICollectionView!
    
    @IBOutlet weak var totalPriceOL: UILabel!
    
    @IBOutlet weak var deliveryOrPickupOL: UISegmentedControl!
    
    @IBOutlet weak var streetAddressOL: UITextField!
    
    @IBOutlet weak var cityOL: UITextField!
    
    @IBOutlet weak var stateOL: UITextField!
    
    @IBOutlet weak var zipCodeOL: UITextField!
    
    @IBOutlet weak var scrollToPreferredOL: UILabel!
    
    @IBOutlet weak var pickupLocationOL: UIPickerView!
    
    @IBOutlet weak var paymentMethodOL: UISegmentedControl!
    
    @IBOutlet weak var checkoutBtn: UIButton!
    
    var totalPrice = 0
    var streetAddress = ""
    var city = ""
    var state = ""
    var zipCode = ""
    var selectedLocation = ""
    var preferredLocation = ""
    var paymentMethod = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkoutBtn.isEnabled = false
        pickupLocationOL.delegate = self
        pickupLocationOL.dataSource = self
        scrollToPreferredOL.isHidden = true
        pickupLocationOL.isHidden = true
        
        // Set the delegate and data source of the collection view
        collectionViewOL.delegate = self
        collectionViewOL.dataSource = self
        
        // Calculate and display the total price of products on cart
        for product in users[index].cart {
            totalPrice += product.price!
        }
        totalPriceOL.text! += ": $\(totalPrice)"
        
        // Set the default preferred pickup location
        selectedLocation = pickupLocations[0]
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func checkoutBtnClicked(_ sender: UIButton) {
        if deliveryOrPickupOL.selectedSegmentIndex == 0 {
            streetAddress = streetAddressOL.text!
            city = cityOL.text!
            state = stateOL.text!
            zipCode = zipCodeOL.text!
        }
        else {
            preferredLocation = selectedLocation
        }
        
        paymentMethod = paymentMethodOL.titleForSegment(at: paymentMethodOL.selectedSegmentIndex)!
    }
    
    @IBAction func deliveryOrPickup(_ sender: Any) {
        if deliveryOrPickupOL.selectedSegmentIndex == 0 {
            streetAddressOL.isHidden = false
            zipCodeOL.isHidden = false
            cityOL.isHidden = false
            stateOL.isHidden = false
            checkoutBtn.isEnabled = false
            scrollToPreferredOL.isHidden = true
            pickupLocationOL.isHidden = true
        }
        else {
            streetAddressOL.isHidden = true
            zipCodeOL.isHidden = true
            stateOL.isHidden = true
            cityOL.isHidden = true
            checkoutBtn.isEnabled = true
            pickupLocationOL.isMultipleTouchEnabled = true
            scrollToPreferredOL.isHidden = false
            pickupLocationOL.isHidden = false
        }
        
    }
    @IBAction func zipCodeFieldEmpty(_ sender: Any) {
        if checkoutBtn.index(ofAccessibilityElement: 0) == 0 {
            if !streetAddressOL.text!.isEmpty && !cityOL.text!.isEmpty && !stateOL.text!.isEmpty{
                checkoutBtn.isEnabled = true
            }
        }
        else {
            if !streetAddressOL.text!.isEmpty && !cityOL.text!.isEmpty && !stateOL.text!.isEmpty && !zipCodeOL.text!.isEmpty {
                checkoutBtn.isEnabled = true
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "cartToReceiptSegue" {
            let destination = segue.destination as! ReceiptViewController
            
            destination.streetAddress = streetAddress
            destination.city = city
            destination.state = state
            destination.zipCode = zipCode
            destination.preferredLocation = preferredLocation
            destination.paymentMethod = paymentMethod
            destination.totalPrice = totalPrice
            destination.name = users[index].name!
            destination.cart = users[index].cart
            destination.deliveryOrPickup = deliveryOrPickupOL.selectedSegmentIndex
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
