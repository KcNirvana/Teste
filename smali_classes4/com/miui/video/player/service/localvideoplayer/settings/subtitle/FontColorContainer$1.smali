.class Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer$1;
.super Ljava/lang/Object;
.source "FontColorContainer.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;

    invoke-static {v0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;->access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    instance-of p2, p1, Lcom/miui/video/player/service/localvideoplayer/settings/views/StrokeRadioButton;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/miui/video/player/service/localvideoplayer/settings/views/StrokeRadioButton;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/views/StrokeRadioButton;->getColor()I

    move-result p1

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p2

    const-string v0, "subtitle_font_color"

    invoke-virtual {p2, v0, p1}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;

    invoke-static {p2, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;->access$100(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontColorContainer;I)V

    :cond_0
    return-void
.end method
