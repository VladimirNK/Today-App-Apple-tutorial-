//
//  ReminderListViewController+Actions.swift
//  Today
//
//  Created by User on 30.06.2022.
//

import UIKit

extension ReminderListViewController {
    @objc func didPressDoneButton(_ sender: ReminderDoneButton) {
        guard let id = sender.id else { return }
        completeReminder(with: id)
        
    }
}
