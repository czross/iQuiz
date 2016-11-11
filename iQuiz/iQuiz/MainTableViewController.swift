//
//  MainTableViewController.swift
//  iQuiz
//
//  Created by Brian Ross on 11/6/16.
//  Copyright © 2016 Chris Ross. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    @IBOutlet weak var selectedCell: QuizFrontTableViewCell!
    
    let info: [String] = ["Science", "Math", "Marvel"]
    let infoDescr: [String] = ["Stuff about the univers", "Stuff about numbers", "Stuff about superheros"]
    let img: [String] = ["science", "math", "marvel"]
    let questions: [String: [String: [String]]] = [
        "Science": ["What is the atomic makeup of water?": ["H3N", "H2O", "CO2", "H2O2"]],
        "Math": ["What is 2 + 2": ["4", "5", "6", "7"]],
        "Marvel": ["Who is Iron Man?": ["Fred Flinstone", "Paul Allen", "Barry Allen", "Tony Stark"]]
    ]
    let answers: [[Int]] = [
        [2],
        [1],
        [4]
    ]
    var quiz: Quiz = Quiz()
  

    
    @IBAction func editBtnInput(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Settings!", message:"This feature isn't available right now", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { _ in
            // Put here any code that you would like to execute when
            // the user taps that OK button (may be empty in your case if that's just
            // an informative alert)
        }
        alert.addAction(action)
        self.present(alert, animated: true){}
    }


    
    private func configureTableview() {
        self.tableView.estimatedRowHeight = 200
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.tableFooterView = UIView()
    }
    
    private func configureNavBar() {
        self.title = "iQuiz"
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureTableview()
        self.configureNavBar()
        
        self.quiz.add(questions: self.questions)
        self.quiz.add(quizNames: self.info)
        self.quiz.add(quizDescription: self.infoDescr)
        self.quiz.add(answer: self.answers)
        // Uncomment the following line to preserve selection between presentations
        // self.    clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return info.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! QuizFrontTableViewCell
        // Configure the cell...
        cell.titleCell.text = self.info[indexPath.row]
        cell.descCell.text = self.infoDescr[indexPath.row]
        cell.imgCell.image = UIImage(named: self.img[indexPath.row])
        
        return cell
    }
    

    /*
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest: QuestionViewController = segue.destination as! QuestionViewController
        quiz.choose(quiz: 0)
        dest.quiz = self.quiz
    } */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow{
            let selectedRow = indexPath.row
            let dest: QuestionViewController = segue.destination as! QuestionViewController
            quiz.choose(quiz: selectedRow)
            dest.quiz = self.quiz
        }
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
