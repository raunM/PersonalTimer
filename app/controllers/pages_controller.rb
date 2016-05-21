class PagesController < ApplicationController
    def home

    end
    
    def index
        @logs = TimeLog.all
    end
    
    def timer
        
    end
end
