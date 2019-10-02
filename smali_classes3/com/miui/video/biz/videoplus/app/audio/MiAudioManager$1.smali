.class Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "MiAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager$1;->this$0:Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager$1;->this$0:Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;->access$000(Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager$1;->this$0:Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;->access$002(Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;Z)Z

    const-string p1, "MiAudioManager"

    const-string p2, "MiAudioManager mIsInitPhoneStateListener(true)"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    :cond_1
    return-void
.end method
