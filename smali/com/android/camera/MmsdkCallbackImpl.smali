.class public Lcom/android/camera/MmsdkCallbackImpl;
.super Ljava/lang/Object;
.source "MmsdkCallbackImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MmsdkCallbackImpl$CallbackListener;,
        Lcom/android/camera/MmsdkCallbackImpl$DefaultProcessStateListener;,
        Lcom/android/camera/MmsdkCallbackImpl$ProcessStateListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCallbackListener:Lcom/android/camera/MmsdkCallbackImpl$CallbackListener;

.field private mContext:Landroid/content/Context;

.field private mMmsdkCallbackClient:Ljava/lang/Object;

.field private mProcessStateListener:Lcom/android/camera/MmsdkCallbackImpl$ProcessStateListener;


# direct methods
.method static synthetic -get0(Lcom/android/camera/MmsdkCallbackImpl;)Lcom/android/camera/MmsdkCallbackImpl$ProcessStateListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MmsdkCallbackImpl;->mProcessStateListener:Lcom/android/camera/MmsdkCallbackImpl$ProcessStateListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "MmsdkCallbackImpl"

    iput-object v0, p0, Lcom/android/camera/MmsdkCallbackImpl;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/camera/MmsdkCallbackImpl$CallbackListener;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/MmsdkCallbackImpl$CallbackListener;-><init>(Lcom/android/camera/MmsdkCallbackImpl;Lcom/android/camera/MmsdkCallbackImpl$CallbackListener;)V

    iput-object v0, p0, Lcom/android/camera/MmsdkCallbackImpl;->mCallbackListener:Lcom/android/camera/MmsdkCallbackImpl$CallbackListener;

    new-instance v0, Lcom/android/camera/MmsdkCallbackImpl$DefaultProcessStateListener;

    invoke-direct {v0, v1}, Lcom/android/camera/MmsdkCallbackImpl$DefaultProcessStateListener;-><init>(Lcom/android/camera/MmsdkCallbackImpl$DefaultProcessStateListener;)V

    iput-object v0, p0, Lcom/android/camera/MmsdkCallbackImpl;->mProcessStateListener:Lcom/android/camera/MmsdkCallbackImpl$ProcessStateListener;

    iput-object p1, p0, Lcom/android/camera/MmsdkCallbackImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 8

    :try_start_0
    const-string/jumbo v5, "com.mediatek.mmsdk.callback.MmsdkCallbackClient"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/camera/MmsdkCallbackImpl;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/MmsdkCallbackImpl;->mMmsdkCallbackClient:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    iget-object v5, p0, Lcom/android/camera/MmsdkCallbackImpl;->mMmsdkCallbackClient:Ljava/lang/Object;

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "init mmsdk callback failed"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_0
    move-exception v4

    iget-object v5, p0, Lcom/android/camera/MmsdkCallbackImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "NoSuchMethodException: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v3

    iget-object v5, p0, Lcom/android/camera/MmsdkCallbackImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "ClassNotFoundException: "

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void

    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method public isMmsdkCallbackSupported()Z
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/camera/MmsdkCallbackImpl;->mMmsdkCallbackClient:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "isCallbackClientSupported"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v4, p0, Lcom/android/camera/MmsdkCallbackImpl;->mMmsdkCallbackClient:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    :catch_0
    move-exception v2

    iget-object v4, p0, Lcom/android/camera/MmsdkCallbackImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "[IllegalAccessException]"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v7

    :catch_1
    move-exception v1

    iget-object v4, p0, Lcom/android/camera/MmsdkCallbackImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "[InvocationTargetException]"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v4, p0, Lcom/android/camera/MmsdkCallbackImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "[NoSuchMethodException]"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
