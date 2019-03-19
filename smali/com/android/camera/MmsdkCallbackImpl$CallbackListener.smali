.class Lcom/android/camera/MmsdkCallbackImpl$CallbackListener;
.super Ljava/lang/Object;
.source "MmsdkCallbackImpl.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MmsdkCallbackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MmsdkCallbackImpl;


# direct methods
.method private constructor <init>(Lcom/android/camera/MmsdkCallbackImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/MmsdkCallbackImpl$CallbackListener;->this$0:Lcom/android/camera/MmsdkCallbackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/MmsdkCallbackImpl;Lcom/android/camera/MmsdkCallbackImpl$CallbackListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/MmsdkCallbackImpl$CallbackListener;-><init>(Lcom/android/camera/MmsdkCallbackImpl;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const-string/jumbo v0, "onSaveDone"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MmsdkCallbackImpl$CallbackListener;->this$0:Lcom/android/camera/MmsdkCallbackImpl;

    invoke-static {v0}, Lcom/android/camera/MmsdkCallbackImpl;->-get0(Lcom/android/camera/MmsdkCallbackImpl;)Lcom/android/camera/MmsdkCallbackImpl$ProcessStateListener;

    move-result-object v0

    aget-object v1, p3, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/MmsdkCallbackImpl$ProcessStateListener;->onProcessDone(Ljava/lang/String;)V

    :cond_0
    return-object v3
.end method
