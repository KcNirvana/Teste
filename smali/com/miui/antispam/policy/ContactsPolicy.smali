.class public Lcom/miui/antispam/policy/ContactsPolicy;
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
    .locals 6

    const/16 v5, 0x9

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/miui/antispam/policy/ContactsPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/antispam/util/h;->XL(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/policy/ContactsPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "contact_call_mode"

    iget v2, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Yq:I

    invoke-static {v0, v1, v2, v3}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/antispam/policy/d;

    invoke-direct {v0, p0, v3, v5}, Lcom/miui/antispam/policy/d;-><init>(Lcom/miui/antispam/policy/c;ZI)V

    return-object v0

    :cond_0
    iget v0, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->state:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/policy/ContactsPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "contact_sms_mode"

    iget v2, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Yq:I

    invoke-static {v0, v1, v2, v3}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/antispam/policy/d;

    invoke-direct {v0, p0, v3, v5}, Lcom/miui/antispam/policy/d;-><init>(Lcom/miui/antispam/policy/c;ZI)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/antispam/policy/d;

    invoke-direct {v0, p0, v3, v4}, Lcom/miui/antispam/policy/d;-><init>(Lcom/miui/antispam/policy/c;ZI)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
