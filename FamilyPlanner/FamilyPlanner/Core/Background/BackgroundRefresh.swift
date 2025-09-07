import BackgroundTasks

struct BackgroundRefresh {
    static let taskIdentifier = "com.example.familyplanner.refresh"

    static func schedule() {
        let request = BGAppRefreshTaskRequest(identifier: taskIdentifier)
        request.earliestBeginDate = Date(timeIntervalSinceNow: 60)
        try? BGTaskScheduler.shared.submit(request)
    }

    static func handle(task: BGAppRefreshTask) {
        schedule()
        task.setTaskCompleted(success: true)
    }
}
