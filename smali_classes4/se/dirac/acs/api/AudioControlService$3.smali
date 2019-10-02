.class Lse/dirac/acs/api/AudioControlService$3;
.super Ljava/lang/Object;
.source "AudioControlService.java"

# interfaces
.implements Lse/dirac/acs/api/AsyncHelper$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/acs/api/AudioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lse/dirac/acs/api/AsyncHelper$Function<",
        "Lse/dirac/acs/api/OutputSettings;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lse/dirac/acs/api/AudioControlService;


# direct methods
.method constructor <init>(Lse/dirac/acs/api/AudioControlService;)V
    .locals 0

    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService$3;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lse/dirac/acs/api/OutputSettings;)Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$3;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-virtual {v0, p1}, Lse/dirac/acs/api/AudioControlService;->setOutput(Lse/dirac/acs/api/OutputSettings;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$3;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v0, p1}, Lse/dirac/acs/api/AudioControlService;->access$500(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lse/dirac/acs/api/OutputSettings;

    invoke-virtual {p0, p1}, Lse/dirac/acs/api/AudioControlService$3;->apply(Lse/dirac/acs/api/OutputSettings;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
