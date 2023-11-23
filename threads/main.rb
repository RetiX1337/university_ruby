# frozen_string_literal: true
require_relative '../threads/thread_coordinator'

tc = ThreadCoordinator.new

thread1 = tc.start_thread(-> { !tc.turn }, "Thread1")
thread2 = tc.start_thread(-> { tc.turn }, "Thread2")

thread1.join
thread2.join


