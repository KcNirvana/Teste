.class public Lcom/miui/video/biz/ugc/player/MiAudioManager;
.super Ljava/lang/Object;
.source "MiAudioManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field public static final MODE_EARPIECE:I = 0x2

.field public static final MODE_HEADSET:I = 0x1

.field public static final MODE_SPEAKER:I = 0x0

.field public static final TAG:Ljava/lang/String; = "MiAudioManager"


# instance fields
.field private currentMode:I

.field private mAudioListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->currentMode:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public destroyListen()V
    .locals 2

    const-string v0, "MiAudioManager"

    const-string v1, "destroyListen"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mAudioManager:Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mAudioListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method public disableOrientationListener()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method

.method public enableOrientationListener(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/biz/ugc/player/MiAudioManager$1;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/video/biz/ugc/player/MiAudioManager$1;-><init>(Lcom/miui/video/biz/ugc/player/MiAudioManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen_rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiAudioManager setAudioManagerParam rotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/player/MiAudioManager;->setAudioManagerParam(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mAudioListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v0, :cond_0

    const-string v0, "MiAudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiAudioManager onAudioFocusChange   focusChange == :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mAudioListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-interface {v0, p1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    :cond_0
    return-void
.end method

.method public requestAudioFocus(ZLandroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mAudioManager:Landroid/media/AudioManager;

    :cond_1
    if-eqz p2, :cond_2

    iput-object p2, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mAudioListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 p2, 0x3

    const/4 v0, 0x2

    invoke-virtual {p1, p0, p2, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p1

    :goto_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    return p2

    :cond_4
    return v1
.end method

.method public setAudioManagerParam(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public startListenCallState(Landroid/telephony/PhoneStateListener;)V
    .locals 2

    const-string v0, "MiAudioManager"

    const-string v1, "startListenCallState"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2
    return-void
.end method

.method public stopListenCallState(Landroid/telephony/PhoneStateListener;)V
    .locals 2

    const-string v0, "MiAudioManager"

    const-string v1, "stopListenCallState"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    const-string v0, "MiAudioManager"

    const-string v1, "stopListenCallState  LISTEN_NONE"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/MiAudioManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2
    return-void
.end method
