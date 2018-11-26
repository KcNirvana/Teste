.class final Lcom/miui/securityscan/model/manualitem/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/securityscan/scanner/b;


# instance fields
.field final synthetic AQ:Lcom/miui/securityscan/model/manualitem/RcsSwitchModel;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/model/manualitem/RcsSwitchModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/m;->AQ:Lcom/miui/securityscan/model/manualitem/RcsSwitchModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public BE(Z)V
    .locals 2

    iget-object v1, p0, Lcom/miui/securityscan/model/manualitem/m;->AQ:Lcom/miui/securityscan/model/manualitem/RcsSwitchModel;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/securityscan/model/manualitem/RcsSwitchModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    return-void

    :cond_0
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_0
.end method
