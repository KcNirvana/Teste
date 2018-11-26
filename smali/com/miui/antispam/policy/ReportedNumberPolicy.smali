.class public Lcom/miui/antispam/policy/ReportedNumberPolicy;
.super Lcom/miui/antispam/policy/c;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/antispam/policy/e;Lcom/miui/antispam/policy/PolicyUtils/b;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/antispam/policy/c;-><init>(Landroid/content/Context;Lcom/miui/antispam/policy/e;Lcom/miui/antispam/policy/PolicyUtils/b;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;)V

    return-void
.end method


# virtual methods
.method public dbQuery(Lcom/miui/antispam/policy/PolicyUtils/a;)Lcom/miui/antispam/policy/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleData(Lcom/miui/antispam/policy/PolicyUtils/a;)Lcom/miui/antispam/policy/d;
    .locals 9

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/antispam/policy/ReportedNumberPolicy;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Yq:I

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$AntiSpam;->isMarkNumBlockOpen(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v8

    :cond_0
    iget-object v1, p0, Lcom/miui/antispam/policy/ReportedNumberPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lmiui/yellowpage/YellowPageUtils;->getPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-boolean v1, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Yv:Z

    if-eqz v1, :cond_1

    iget v0, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Yq:I

    invoke-static {v0}, Lcom/miui/antispam/db/a;->YU(I)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/antispam/policy/ReportedNumberPolicy;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Yq:I

    invoke-virtual {v7}, Lmiui/yellowpage/YellowPagePhone;->getCid()I

    move-result v2

    invoke-virtual {v7}, Lmiui/yellowpage/YellowPagePhone;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lmiui/yellowpage/YellowPagePhone;->getAntispamProviderId()I

    move-result v4

    invoke-virtual {v7}, Lmiui/yellowpage/YellowPagePhone;->isUserMarked()Z

    move-result v5

    invoke-virtual {v7}, Lmiui/yellowpage/YellowPagePhone;->getMarkedCount()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lmiui/provider/ExtraTelephony;->checkMarkedNumberIntercept(Landroid/content/Context;IILjava/lang/String;IZI)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/miui/antispam/policy/d;

    invoke-virtual {v7}, Lmiui/yellowpage/YellowPagePhone;->getCid()I

    move-result v1

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->getMarkedNumberBlockType(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v1}, Lcom/miui/antispam/policy/d;-><init>(Lcom/miui/antispam/policy/c;ZI)V

    return-object v0

    :cond_2
    new-instance v1, Lcom/miui/antispam/policy/d;

    const/4 v2, -0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/miui/antispam/policy/d;-><init>(Lcom/miui/antispam/policy/c;ZI)V

    return-object v1

    :cond_3
    return-object v8
.end method
