.class public Lcom/miui/antispam/policy/EmptyNumberPolicy;
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
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v0, "-1"

    iget-object v1, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Yt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/policy/EmptyNumberPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "empty_call_mode"

    iget v2, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Yq:I

    invoke-static {v0, v1, v2, v3}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/antispam/policy/d;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v3, v1}, Lcom/miui/antispam/policy/d;-><init>(Lcom/miui/antispam/policy/c;ZI)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/policy/EmptyNumberPolicy;->mPc:Lcom/miui/antispam/policy/e;

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->XY:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    invoke-interface {v0, v1}, Lcom/miui/antispam/policy/e;->Xm(Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;)Lcom/miui/antispam/policy/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/antispam/policy/c;->handleData(Lcom/miui/antispam/policy/PolicyUtils/a;)Lcom/miui/antispam/policy/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/miui/antispam/policy/d;->YK:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/antispam/policy/d;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v3, v1}, Lcom/miui/antispam/policy/d;-><init>(Lcom/miui/antispam/policy/c;ZI)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/antispam/policy/d;

    invoke-direct {v0, p0, v3, v4}, Lcom/miui/antispam/policy/d;-><init>(Lcom/miui/antispam/policy/c;ZI)V

    return-object v0

    :cond_2
    return-object v2
.end method
