.class Lse/dirac/acs/api/AudioControlService$OnSetOutputDone$1;
.super Ljava/lang/Object;
.source "AudioControlService.java"

# interfaces
.implements Lse/dirac/acs/api/AsyncHelper$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lse/dirac/acs/api/AsyncHelper$Function<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;


# direct methods
.method constructor <init>(Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;)V
    .locals 0

    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService$OnSetOutputDone$1;->this$0:Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lse/dirac/acs/api/AudioControlService$OnSetOutputDone$1;->apply(Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$OnSetOutputDone$1;->this$0:Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;->OnSetOutputDone(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "se.dirac.acs-api"

    const-string v0, "expecting exception in main thread"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
