class Team
    #オブジェクトの変数
    attr_accessor :name, :win, :lose, :draw
    
    #初期化用のメソッド
    def initialize(name,win,lose,draw)
        self.name = name
        self.win = win
        self.lose = lose
        self.draw = draw
    end
    
    #オブジェクトのメソッド
    def calc_win_rate
        self.win.to_f/(self.win + self.lose)
    end
    
    def show_team_result
        puts "#{self.name}の２０２０年の成績は#{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は#{self.calc_win_rate}です。"
    end
end

team_G = Team.new('Giants',67,45,8)
team_T = Team.new('Tigers',60,53,7)
team_D = Team.new('Dragons',60,55,5)
team_B = Team.new('BayStars',56,58,6)
team_C = Team.new('Carp',52,56,12)
team_S = Team.new('Swallows',41,69,10)

team_G.show_team_result
team_T.show_team_result
team_D.show_team_result
team_B.show_team_result
team_C.show_team_result
team_S.show_team_result