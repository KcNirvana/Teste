.class public Lcom/miui/antispam/policy/PolicyUtils/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private YB:Lcom/xiaomi/a/a;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/antispam/policy/PolicyUtils/c;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/xiaomi/a/a;

    invoke-direct {v0}, Lcom/xiaomi/a/a;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/policy/PolicyUtils/c;->YB:Lcom/xiaomi/a/a;

    return-void
.end method


# virtual methods
.method public Xa(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/antispam/policy/PolicyUtils/c;->YB:Lcom/xiaomi/a/a;

    iget-object v2, p0, Lcom/miui/antispam/policy/PolicyUtils/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p1, p2}, Lcom/xiaomi/a/a;->bOi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method
