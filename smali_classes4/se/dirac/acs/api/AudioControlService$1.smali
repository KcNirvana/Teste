.class Lse/dirac/acs/api/AudioControlService$1;
.super Ljava/lang/Object;
.source "AudioControlService.java"

# interfaces
.implements Lse/dirac/acs/api/AudioControlService$SetUserFunctor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/dirac/acs/api/AudioControlService;->setUser(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/dirac/acs/api/AudioControlService;

.field final synthetic val$done:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$success:[Z

.field final synthetic val$user:Ljava/lang/String;


# direct methods
.method constructor <init>(Lse/dirac/acs/api/AudioControlService;[ZLjava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService$1;->this$0:Lse/dirac/acs/api/AudioControlService;

    iput-object p2, p0, Lse/dirac/acs/api/AudioControlService$1;->val$success:[Z

    iput-object p3, p0, Lse/dirac/acs/api/AudioControlService$1;->val$user:Ljava/lang/String;

    iput-object p4, p0, Lse/dirac/acs/api/AudioControlService$1;->val$done:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetUser(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$1;->val$success:[Z

    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService$1;->val$user:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    iget-object p1, p0, Lse/dirac/acs/api/AudioControlService$1;->val$done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
