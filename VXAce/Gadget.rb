#==============================================================================
# ■ Sprite_Gadget
#------------------------------------------------------------------------------
# 　付属品表示用のスプライトです。複数のスプライトで構成されるコンテンツ
# における付属品表示等に使用します。
#==============================================================================

class Sprite_Gadget < Sprite
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #     mother   : 親スプライト
  #     viewport : ビューポート(Viewport)
  #--------------------------------------------------------------------------
  def initialize(mother, viewport=nil)
    super(viewport)
    @mother = mother
    @data = [0, 0, 0]
    self.z = 1;self.x = 0; self.y = 0
  end
  #--------------------------------------------------------------------------
  # ● リフレッシュ(親スプライトの座標を変えた際に呼び出して下さい)
  #--------------------------------------------------------------------------
  def refresh
    self.x = @data[0]
    self.y = @data[1]
    self.z = @data[2]
  end
  #--------------------------------------------------------------------------
  # ● X 座標の設定
  #--------------------------------------------------------------------------
  def x=(value)
    @data[0] = value
    value += @mother.x
    super(value)
  end
  #--------------------------------------------------------------------------
  # ● Y 座標の設定
  #--------------------------------------------------------------------------
  def y=(value)
    @data[1] = value
    value += @mother.y
    super(value)
  end
  #--------------------------------------------------------------------------
  # ● Z 座標の設定
  #--------------------------------------------------------------------------
  def z=(value)
    @data[2] = value
    value += @mother.z
    super(value)
  end
end
