.class final Lcom/miui/antivirus/result/C;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic anN:Lcom/miui/antivirus/result/Advertisement;

.field final synthetic anO:Lcom/miui/antivirus/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/result/Advertisement;Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/C;->anN:Lcom/miui/antivirus/result/Advertisement;

    iput-object p2, p0, Lcom/miui/antivirus/result/C;->anO:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/result/C;->anO:Lcom/miui/antivirus/activity/MainActivity;

    iget-object v1, p0, Lcom/miui/antivirus/result/C;->anN:Lcom/miui/antivirus/result/Advertisement;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->awO(Lcom/miui/antivirus/result/a;)V

    iget-object v0, p0, Lcom/miui/antivirus/result/C;->anN:Lcom/miui/antivirus/result/Advertisement;

    invoke-static {v0}, Lcom/miui/antivirus/result/Advertisement;->asu(Lcom/miui/antivirus/result/Advertisement;)I

    move-result v0

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/result/C;->anN:Lcom/miui/antivirus/result/Advertisement;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/Advertisement;->asn()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/result/C;->anN:Lcom/miui/antivirus/result/Advertisement;

    invoke-static {v1}, Lcom/miui/antivirus/result/Advertisement;->ast(Lcom/miui/antivirus/result/Advertisement;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/antivirus/result/g;->ats(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
