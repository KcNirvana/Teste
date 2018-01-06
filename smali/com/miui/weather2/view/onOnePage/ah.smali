.class Lcom/miui/weather2/view/onOnePage/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/ah;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ah;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    const-string v0, "ad_click"

    const-string v1, "video_error"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
