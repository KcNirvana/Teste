.class public Lcom/xiaomi/j/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/a;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/j/a/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/a/a",
        "<",
        "Lcom/xiaomi/j/a/m;",
        "Lcom/xiaomi/j/a/m$a;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/j/a/m$a;",
            "Lb/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lb/a/a/b/j;

.field private static final g:Lb/a/a/b/b;

.field private static final h:Lb/a/a/b/b;

.field private static final i:Lb/a/a/b/b;

.field private static final j:Lb/a/a/b/b;


# instance fields
.field public a:Lcom/xiaomi/j/a/p;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:D

.field private k:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v11, 0xb

    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x2

    new-instance v0, Lb/a/a/b/j;

    const-string v1, "GPS"

    invoke-direct {v0, v1}, Lb/a/a/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/j/a/m;->f:Lb/a/a/b/j;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "location"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v9}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/m;->g:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "provider"

    invoke-direct {v0, v1, v11, v7}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/m;->h:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "period"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v10, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/m;->i:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "accuracy"

    invoke-direct {v0, v1, v8, v8}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/m;->j:Lb/a/a/b/b;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/j/a/m$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/xiaomi/j/a/m$a;->a:Lcom/xiaomi/j/a/m$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "location"

    new-instance v4, Lb/a/a/a/g;

    const/16 v5, 0xc

    const-class v6, Lcom/xiaomi/j/a/p;

    invoke-direct {v4, v5, v6}, Lb/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/m$a;->b:Lcom/xiaomi/j/a/m$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "provider"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v11}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/m$a;->c:Lcom/xiaomi/j/a/m$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "period"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v10}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/m$a;->d:Lcom/xiaomi/j/a/m$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "accuracy"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v8}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/j/a/m;->e:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/j/a/m;

    sget-object v1, Lcom/xiaomi/j/a/m;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/j/a/m;->k:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public a(D)Lcom/xiaomi/j/a/m;
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/j/a/m;->d:D

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/j/a/m;->b(Z)V

    return-object p0
.end method

.method public a(J)Lcom/xiaomi/j/a/m;
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/j/a/m;->c:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/j/a/m;->a(Z)V

    return-object p0
.end method

.method public a(Lcom/xiaomi/j/a/p;)Lcom/xiaomi/j/a/m;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/m;->a:Lcom/xiaomi/j/a/p;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/j/a/m;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/m;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lb/a/a/b/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/f;
        }
    .end annotation

    const/4 v3, 0x1

    invoke-virtual {p1}, Lb/a/a/b/e;->g()Lb/a/a/b/j;

    :goto_0
    invoke-virtual {p1}, Lb/a/a/b/e;->i()Lb/a/a/b/b;

    move-result-object v0

    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lb/a/a/b/e;->h()V

    invoke-virtual {p0}, Lcom/xiaomi/j/a/m;->e()V

    return-void

    :cond_0
    iget-short v1, v0, Lb/a/a/b/b;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    :goto_1
    invoke-virtual {p1}, Lb/a/a/b/e;->j()V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/xiaomi/j/a/p;

    invoke-direct {v0}, Lcom/xiaomi/j/a/p;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/j/a/m;->a:Lcom/xiaomi/j/a/p;

    iget-object v0, p0, Lcom/xiaomi/j/a/m;->a:Lcom/xiaomi/j/a/p;

    invoke-virtual {v0, p1}, Lcom/xiaomi/j/a/p;->a(Lb/a/a/b/e;)V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/m;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lb/a/a/b/e;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/j/a/m;->c:J

    invoke-virtual {p0, v3}, Lcom/xiaomi/j/a/m;->a(Z)V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lb/a/a/b/e;->v()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/j/a/m;->d:D

    invoke-virtual {p0, v3}, Lcom/xiaomi/j/a/m;->b(Z)V

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/m;->k:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/m;->a:Lcom/xiaomi/j/a/p;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/j/a/m;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/j/a/m;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/m;->a()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/m;->a:Lcom/xiaomi/j/a/p;

    iget-object v2, p1, Lcom/xiaomi/j/a/m;->a:Lcom/xiaomi/j/a/p;

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/p;->a(Lcom/xiaomi/j/a/p;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/j/a/m;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/m;->b()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/m;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/j/a/m;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/m;->c()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/j/a/m;->c:J

    iget-wide v4, p1, Lcom/xiaomi/j/a/m;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/j/a/m;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/m;->d()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/j/a/m;->d:D

    iget-wide v4, p1, Lcom/xiaomi/j/a/m;->d:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    :cond_9
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/j/a/m;)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/j/a/m;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/m;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/m;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/j/a/m;->a:Lcom/xiaomi/j/a/p;

    iget-object v1, p1, Lcom/xiaomi/j/a/m;->a:Lcom/xiaomi/j/a/p;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/j/a/m;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/m;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/m;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/j/a/m;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/j/a/m;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/j/a/m;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/m;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/m;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/xiaomi/j/a/m;->c:J

    iget-wide v2, p1, Lcom/xiaomi/j/a/m;->c:J

    invoke-static {v0, v1, v2, v3}, Lb/a/a/b;->a(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/j/a/m;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/m;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/m;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/xiaomi/j/a/m;->d:D

    iget-wide v2, p1, Lcom/xiaomi/j/a/m;->d:D

    invoke-static {v0, v1, v2, v3}, Lb/a/a/b;->a(DD)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lb/a/a/b/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/f;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/j/a/m;->e()V

    sget-object v0, Lcom/xiaomi/j/a/m;->f:Lb/a/a/b/j;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/j;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/m;->a:Lcom/xiaomi/j/a/p;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/j/a/m;->g:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/m;->a:Lcom/xiaomi/j/a/p;

    invoke-virtual {v0, p1}, Lcom/xiaomi/j/a/p;->b(Lb/a/a/b/e;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/j/a/m;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/j/a/m;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/j/a/m;->h:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/m;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/j/a/m;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/j/a/m;->i:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-wide v0, p0, Lcom/xiaomi/j/a/m;->c:J

    invoke-virtual {p1, v0, v1}, Lb/a/a/b/e;->a(J)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/j/a/m;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/j/a/m;->j:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-wide v0, p0, Lcom/xiaomi/j/a/m;->d:D

    invoke-virtual {p1, v0, v1}, Lb/a/a/b/e;->a(D)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_3
    invoke-virtual {p1}, Lb/a/a/b/e;->c()V

    invoke-virtual {p1}, Lb/a/a/b/e;->a()V

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/m;->k:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/m;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/m;->k:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/xiaomi/j/a/m;

    invoke-virtual {p0, p1}, Lcom/xiaomi/j/a/m;->b(Lcom/xiaomi/j/a/m;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/m;->k:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/f;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/j/a/m;->a:Lcom/xiaomi/j/a/p;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'location\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/j/a/m;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/xiaomi/j/a/m;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/xiaomi/j/a/m;

    invoke-virtual {p0, p1}, Lcom/xiaomi/j/a/m;->a(Lcom/xiaomi/j/a/m;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPS("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "location:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/j/a/m;->a:Lcom/xiaomi/j/a/p;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/j/a/m;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/j/a/m;->b:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/j/a/m;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "period:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/j/a/m;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/j/a/m;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "accuracy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/j/a/m;->d:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/j/a/m;->a:Lcom/xiaomi/j/a/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/j/a/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
