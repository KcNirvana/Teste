.class public Lcom/miui/antispam/policy/BlackPrefixPolicy;
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
    .locals 5

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/miui/antispam/policy/BlackPrefixPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    iget v2, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->state:I

    iget v3, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Yq:I

    invoke-static {v0, v1, v2, v3}, Lmiui/provider/ExtraTelephony;->isPrefixInBlack(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->state:I

    const/4 v1, 0x2

    new-instance v0, Lcom/miui/antispam/policy/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v4}, Lcom/miui/antispam/policy/d;-><init>(Lcom/miui/antispam/policy/c;ZI)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    sget v0, Lcom/miui/antispam/b;->aaG:I

    return v0
.end method

.method public handleData(Lcom/miui/antispam/policy/PolicyUtils/a;)Lcom/miui/antispam/policy/d;
    .locals 6

    const/4 v5, 0x6

    iget-object v0, p0, Lcom/miui/antispam/policy/BlackPrefixPolicy;->mJudge:Lcom/miui/antispam/policy/PolicyUtils/b;

    invoke-virtual {v0}, Lcom/miui/antispam/policy/PolicyUtils/b;->Wx()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/policy/BlackPrefixPolicy;->mJudge:Lcom/miui/antispam/policy/PolicyUtils/b;

    iget-object v1, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    iget v2, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->state:I

    sget v3, Lcom/miui/antispam/b;->aaG:I

    iget v4, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Yq:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/antispam/policy/PolicyUtils/b;->WL(Ljava/lang/String;III)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->state:I

    const/4 v1, 0x2

    new-instance v0, Lcom/miui/antispam/policy/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v5}, Lcom/miui/antispam/policy/d;-><init>(Lcom/miui/antispam/policy/c;ZI)V

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/antispam/policy/BlackPrefixPolicy;->dbQuery(Lcom/miui/antispam/policy/PolicyUtils/a;)Lcom/miui/antispam/policy/d;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
