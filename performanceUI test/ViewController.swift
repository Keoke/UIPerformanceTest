//
//  ViewController.swift
//  performanceUI test
//
//  Created by mac-226 on 3/30/16.
//  Copyright © 2016 mac-226. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

  @IBOutlet weak var tableView: UITableView!
  
  var didLoadDate:NSDate?
  override func viewDidLoad() {
    super.viewDidLoad()
    didLoadDate = NSDate()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func viewDidAppear(animated: Bool) {
    print("load time = " + String(abs(didLoadDate!.timeIntervalSinceNow)))
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 100
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    return tableView.dequeueReusableCellWithIdentifier("test")!
  }


}

