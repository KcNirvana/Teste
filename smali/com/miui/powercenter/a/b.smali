.class public Lcom/miui/powercenter/a/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aNE:Lcom/miui/powercenter/a/b;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/a/b;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/b;
    .locals 2

    sget-object v0, Lcom/miui/powercenter/a/b;->aNE:Lcom/miui/powercenter/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/powercenter/a/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/powercenter/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/powercenter/a/b;->aNE:Lcom/miui/powercenter/a/b;

    :cond_0
    sget-object v0, Lcom/miui/powercenter/a/b;->aNE:Lcom/miui/powercenter/a/b;

    return-object v0
.end method


# virtual methods
.method public baV(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8

    const-wide/16 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/powercenter/a/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v0

    :cond_1
    move-wide v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    return-wide v6

    :cond_2
    move-wide v0, v6

    goto :goto_0
.end method
