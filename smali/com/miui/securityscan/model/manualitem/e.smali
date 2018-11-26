.class Lcom/miui/securityscan/model/manualitem/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic AB:Lcom/miui/securityscan/model/manualitem/MifiInsuranceModel;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/model/manualitem/MifiInsuranceModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/e;->AB:Lcom/miui/securityscan/model/manualitem/MifiInsuranceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/model/manualitem/e;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/miui/securityscan/c;->OI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/e;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
