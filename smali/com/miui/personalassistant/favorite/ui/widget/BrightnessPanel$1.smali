.class Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel$1;
.super Ljava/lang/Object;
.source "BrightnessPanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel$1;->this$0:Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    const-string/jumbo v0, "BrightnessPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProgressChanged..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel$1;->this$0:Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->access$000(Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;)Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel$BrightnessChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel$1;->this$0:Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->access$000(Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;)Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel$BrightnessChangedListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel$BrightnessChangedListener;->onBrightnessChanged(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    const-string/jumbo v0, "BrightnessPanel"

    const-string/jumbo v1, "onStopTrackingTouch"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel$1;->this$0:Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/widget/BrightnessPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "key_detail_brightness_progress"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
