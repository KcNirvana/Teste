.class public Lcom/miui/permission/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static beq:J

.field private static ber:Lcom/miui/permission/a;

.field private static bes:[I


# instance fields
.field private bep:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    filled-new-array {v2, v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/miui/permission/a;->bes:[I

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/miui/permission/a;->beq:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permission/a;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/permission/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permission/a;->bep:Landroid/content/ContentResolver;

    return-void
.end method

.method public static bBM(Ljava/lang/Long;)Z
    .locals 1

    sget-object v0, Lcom/miui/permission/g;->bex:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static bBP(Ljava/lang/Long;)Z
    .locals 1

    sget-object v0, Lcom/miui/permission/g;->bew:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static bBT(JJJJJJJ)I
    .locals 6

    invoke-static {}, Lcom/miui/permission/a;->bBU()I

    move-result v0

    and-long v2, p8, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-long v2, p10, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    and-long v2, p12, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    and-long v2, p2, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    and-long v2, p4, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    and-long v2, p6, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final bBU()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/permission/a;
    .locals 2

    const-class v1, Lcom/miui/permission/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/permission/a;->ber:Lcom/miui/permission/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/permission/a;

    invoke-direct {v0, p0}, Lcom/miui/permission/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/permission/a;->ber:Lcom/miui/permission/a;

    :cond_0
    sget-object v0, Lcom/miui/permission/a;->ber:Lcom/miui/permission/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public varargs bBL(JI[Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/miui/permission/a;->bBV(JII[Ljava/lang/String;)V

    return-void
.end method

.method public bBN(I)Ljava/util/List;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/permission/a;->bep:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/permission/d;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/permission/a;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v1, "extra_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bBO()J
    .locals 5

    const/4 v4, 0x0

    sget-wide v0, Lcom/miui/permission/a;->beq:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/permission/a;->bep:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/permission/d;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/miui/permission/a;->beq:J

    :cond_0
    sget-wide v0, Lcom/miui/permission/a;->beq:J

    return-wide v0
.end method

.method public bBQ(JJJJJJJJ)Ljava/util/HashMap;
    .locals 25

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/permission/a;->bBS(JJ)J

    move-result-wide v22

    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    move/from16 v20, v6

    :goto_0
    const/16 v6, 0x40

    move/from16 v0, v20

    if-ge v0, v6, :cond_1

    const-wide/16 v6, 0x1

    shl-long v6, v6, v20

    and-long v8, v22, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    invoke-static/range {v6 .. v19}, Lcom/miui/permission/a;->bBT(JJJJJJJ)I

    move-result v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v6, v20, 0x1

    move/from16 v20, v6

    goto :goto_0

    :cond_1
    return-object v21
.end method

.method public bBR(JJ)I
    .locals 3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/permission/a;->bBS(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0
.end method

.method public bBS(JJ)J
    .locals 5

    invoke-virtual {p0}, Lcom/miui/permission/a;->bBO()J

    move-result-wide v0

    xor-long v2, p1, p3

    and-long/2addr v2, p1

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public varargs bBV(JII[Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "extra_permission"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "extra_action"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "extra_package"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v1, "extra_flags"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/miui/permission/a;->bep:Landroid/content/ContentResolver;

    sget-object v2, Lcom/miui/permission/d;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public bBW(I)Ljava/util/List;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/permission/a;->bep:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/permission/d;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/permission/a;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v1, "extra_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/permission/a;->bep:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/permission/d;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "extra_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/miui/permission/f;->bev:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v5

    :cond_0
    return v4
.end method

.method public setEnabled(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget v0, Lcom/miui/permission/f;->bev:I

    or-int/lit8 v0, v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/miui/permission/a;->bep:Landroid/content/ContentResolver;

    sget-object v2, Lcom/miui/permission/d;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public updateData()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/permission/a;->bep:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/permission/d;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
