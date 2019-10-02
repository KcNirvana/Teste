.class Lcom/miui/video/biz/ugc/player/MiAudioManager$1;
.super Landroid/view/OrientationEventListener;
.source "MiAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/ugc/player/MiAudioManager;->enableOrientationListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mOrientation:I

.field final synthetic this$0:Lcom/miui/video/biz/ugc/player/MiAudioManager;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/ugc/player/MiAudioManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager$1;->this$0:Lcom/miui/video/biz/ugc/player/MiAudioManager;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    add-int/lit8 p1, p1, 0x2d

    div-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p1, p1, 0x5a

    rem-int/lit16 p1, p1, 0x168

    iget v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager$1;->mOrientation:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager$1;->mOrientation:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "screen_rotation="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager$1;->mOrientation:I

    div-int/lit8 v0, v0, 0x5a

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiAudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiAudioManager setAudioManagerParam rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager$1;->mOrientation:I

    div-int/lit8 v2, v2, 0x5a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager$1;->this$0:Lcom/miui/video/biz/ugc/player/MiAudioManager;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/ugc/player/MiAudioManager;->setAudioManagerParam(Ljava/lang/String;)V

    return-void
.end method
