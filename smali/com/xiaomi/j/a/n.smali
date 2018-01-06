.class public Lcom/xiaomi/j/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/a;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/j/a/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/a/a",
        "<",
        "Lcom/xiaomi/j/a/n;",
        "Lcom/xiaomi/j/a/n$a;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/j/a/n$a;",
            "Lb/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lb/a/a/b/j;

.field private static final m:Lb/a/a/b/b;

.field private static final n:Lb/a/a/b/b;

.field private static final o:Lb/a/a/b/b;

.field private static final p:Lb/a/a/b/b;

.field private static final q:Lb/a/a/b/b;

.field private static final r:Lb/a/a/b/b;

.field private static final s:Lb/a/a/b/b;

.field private static final t:Lb/a/a/b/b;

.field private static final u:Lb/a/a/b/b;

.field private static final v:Lb/a/a/b/b;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Lcom/xiaomi/j/a/o;

.field public g:Lcom/xiaomi/j/a/p;

.field public h:D

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/j/a/p;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lcom/xiaomi/j/a/k;

.field private w:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v7, 0x4

    const/4 v10, 0x2

    const/16 v6, 0xa

    const/16 v5, 0xb

    const/4 v9, 0x1

    new-instance v0, Lb/a/a/b/j;

    const-string v1, "GeoFencing"

    invoke-direct {v0, v1}, Lb/a/a/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/j/a/n;->l:Lb/a/a/b/j;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "id"

    invoke-direct {v0, v1, v5, v9}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/n;->m:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "name"

    invoke-direct {v0, v1, v5, v10}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/n;->n:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "appId"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/n;->o:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "packageName"

    invoke-direct {v0, v1, v5, v7}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/n;->p:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "createTime"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/n;->q:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "type"

    const/16 v2, 0x8

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/n;->r:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "circleCenter"

    const/16 v2, 0xc

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/n;->s:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "circleRadius"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/n;->t:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "polygonPoints"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v6}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/n;->u:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "coordinateProvider"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v5}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/n;->v:Lb/a/a/b/b;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/j/a/n$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/xiaomi/j/a/n$a;->a:Lcom/xiaomi/j/a/n$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "id"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v5}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/n$a;->b:Lcom/xiaomi/j/a/n$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "name"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v5}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/n$a;->c:Lcom/xiaomi/j/a/n$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "appId"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v6}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/n$a;->d:Lcom/xiaomi/j/a/n$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "packageName"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v5}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/n$a;->e:Lcom/xiaomi/j/a/n$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "createTime"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v6}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/n$a;->f:Lcom/xiaomi/j/a/n$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "type"

    new-instance v4, Lb/a/a/a/a;

    const/16 v5, 0x10

    const-class v6, Lcom/xiaomi/j/a/o;

    invoke-direct {v4, v5, v6}, Lb/a/a/a/a;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/n$a;->g:Lcom/xiaomi/j/a/n$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "circleCenter"

    new-instance v4, Lb/a/a/a/g;

    const/16 v5, 0xc

    const-class v6, Lcom/xiaomi/j/a/p;

    invoke-direct {v4, v5, v6}, Lb/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v10, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/n$a;->h:Lcom/xiaomi/j/a/n$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "circleRadius"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v7}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/n$a;->i:Lcom/xiaomi/j/a/n$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "polygonPoints"

    new-instance v4, Lb/a/a/a/d;

    const/16 v5, 0xf

    new-instance v6, Lb/a/a/a/g;

    const/16 v7, 0xc

    const-class v8, Lcom/xiaomi/j/a/p;

    invoke-direct {v6, v7, v8}, Lb/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v5, v6}, Lb/a/a/a/d;-><init>(BLb/a/a/a/c;)V

    invoke-direct {v2, v3, v10, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/n$a;->j:Lcom/xiaomi/j/a/n$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "coordinateProvider"

    new-instance v4, Lb/a/a/a/a;

    const/16 v5, 0x10

    const-class v6, Lcom/xiaomi/j/a/k;

    invoke-direct {v4, v5, v6}, Lb/a/a/a/a;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/j/a/n;->k:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/j/a/n;

    sget-object v1, Lcom/xiaomi/j/a/n;->k:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/j/a/n;->w:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public a(D)Lcom/xiaomi/j/a/n;
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/j/a/n;->h:D

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/j/a/n;->c(Z)V

    return-object p0
.end method

.method public a(J)Lcom/xiaomi/j/a/n;
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/j/a/n;->c:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/j/a/n;->a(Z)V

    return-object p0
.end method

.method public a(Lcom/xiaomi/j/a/k;)Lcom/xiaomi/j/a/n;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/n;->j:Lcom/xiaomi/j/a/k;

    return-object p0
.end method

.method public a(Lcom/xiaomi/j/a/o;)Lcom/xiaomi/j/a/n;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/n;->f:Lcom/xiaomi/j/a/o;

    return-object p0
.end method

.method public a(Lcom/xiaomi/j/a/p;)Lcom/xiaomi/j/a/n;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/n;->g:Lcom/xiaomi/j/a/p;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/j/a/n;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/n;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/xiaomi/j/a/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/j/a/p;",
            ">;)",
            "Lcom/xiaomi/j/a/n;"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/j/a/n;->i:Ljava/util/List;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lb/a/a/b/e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/f;
        }
    .end annotation

    const/16 v7, 0xa

    const/16 v6, 0x8

    const/16 v5, 0xb

    const/4 v4, 0x1

    invoke-virtual {p1}, Lb/a/a/b/e;->g()Lb/a/a/b/j;

    :goto_0
    invoke-virtual {p1}, Lb/a/a/b/e;->i()Lb/a/a/b/b;

    move-result-object v0

    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lb/a/a/b/e;->h()V

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->f()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lb/a/a/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-short v1, v0, Lb/a/a/b/b;->c:S

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    :goto_1
    invoke-virtual {p1}, Lb/a/a/b/e;->j()V

    goto :goto_0

    :pswitch_1
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v5, :cond_1

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/n;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/n;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v7, :cond_3

    invoke-virtual {p1}, Lb/a/a/b/e;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/j/a/n;->c:J

    invoke-virtual {p0, v4}, Lcom/xiaomi/j/a/n;->a(Z)V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v5, :cond_4

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/n;->d:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :pswitch_5
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v7, :cond_5

    invoke-virtual {p1}, Lb/a/a/b/e;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/j/a/n;->e:J

    invoke-virtual {p0, v4}, Lcom/xiaomi/j/a/n;->b(Z)V

    goto :goto_1

    :cond_5
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :pswitch_6
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v6, :cond_6

    invoke-virtual {p1}, Lb/a/a/b/e;->t()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/j/a/o;->a(I)Lcom/xiaomi/j/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/n;->f:Lcom/xiaomi/j/a/o;

    goto :goto_1

    :cond_6
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :pswitch_7
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_7

    new-instance v0, Lcom/xiaomi/j/a/p;

    invoke-direct {v0}, Lcom/xiaomi/j/a/p;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/j/a/n;->g:Lcom/xiaomi/j/a/p;

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->g:Lcom/xiaomi/j/a/p;

    invoke-virtual {v0, p1}, Lcom/xiaomi/j/a/p;->a(Lb/a/a/b/e;)V

    goto/16 :goto_1

    :cond_7
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    :pswitch_8
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    invoke-virtual {p1}, Lb/a/a/b/e;->v()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/j/a/n;->h:D

    invoke-virtual {p0, v4}, Lcom/xiaomi/j/a/n;->c(Z)V

    goto/16 :goto_1

    :cond_8
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    :pswitch_9
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    const/16 v2, 0xf

    if-ne v1, v2, :cond_a

    invoke-virtual {p1}, Lb/a/a/b/e;->m()Lb/a/a/b/c;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    iget v2, v1, Lb/a/a/b/c;->b:I

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/j/a/n;->i:Ljava/util/List;

    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lb/a/a/b/c;->b:I

    if-ge v0, v2, :cond_9

    new-instance v2, Lcom/xiaomi/j/a/p;

    invoke-direct {v2}, Lcom/xiaomi/j/a/p;-><init>()V

    invoke-virtual {v2, p1}, Lcom/xiaomi/j/a/p;->a(Lb/a/a/b/e;)V

    iget-object v3, p0, Lcom/xiaomi/j/a/n;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Lb/a/a/b/e;->n()V

    goto/16 :goto_1

    :cond_a
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    :pswitch_a
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v6, :cond_b

    invoke-virtual {p1}, Lb/a/a/b/e;->t()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/j/a/k;->a(I)Lcom/xiaomi/j/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/n;->j:Lcom/xiaomi/j/a/k;

    goto/16 :goto_1

    :cond_b
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->j()Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Lb/a/a/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'createTime\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->u()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->w:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public a(Lcom/xiaomi/j/a/n;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->b()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/n;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->d()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/n;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/n;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    iget-wide v2, p0, Lcom/xiaomi/j/a/n;->c:J

    iget-wide v4, p1, Lcom/xiaomi/j/a/n;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->h()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/n;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/n;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    iget-wide v2, p0, Lcom/xiaomi/j/a/n;->e:J

    iget-wide v4, p1, Lcom/xiaomi/j/a/n;->e:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->l()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->l()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/n;->f:Lcom/xiaomi/j/a/o;

    iget-object v2, p1, Lcom/xiaomi/j/a/n;->f:Lcom/xiaomi/j/a/o;

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->n()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->n()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/n;->g:Lcom/xiaomi/j/a/p;

    iget-object v2, p1, Lcom/xiaomi/j/a/n;->g:Lcom/xiaomi/j/a/p;

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/p;->a(Lcom/xiaomi/j/a/p;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->p()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->p()Z

    move-result v2

    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/j/a/n;->h:D

    iget-wide v4, p1, Lcom/xiaomi/j/a/n;->h:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->r()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->r()Z

    move-result v2

    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/n;->i:Ljava/util/List;

    iget-object v2, p1, Lcom/xiaomi/j/a/n;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->t()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->t()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/n;->j:Lcom/xiaomi/j/a/k;

    iget-object v2, p1, Lcom/xiaomi/j/a/n;->j:Lcom/xiaomi/j/a/k;

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/k;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_11
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/j/a/n;)I
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
    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/j/a/n;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/j/a/n;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/xiaomi/j/a/n;->c:J

    iget-wide v2, p1, Lcom/xiaomi/j/a/n;->c:J

    invoke-static {v0, v1, v2, v3}, Lb/a/a/b;->a(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/j/a/n;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/xiaomi/j/a/n;->e:J

    iget-wide v2, p1, Lcom/xiaomi/j/a/n;->e:J

    invoke-static {v0, v1, v2, v3}, Lb/a/a/b;->a(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->f:Lcom/xiaomi/j/a/o;

    iget-object v1, p1, Lcom/xiaomi/j/a/n;->f:Lcom/xiaomi/j/a/o;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->g:Lcom/xiaomi/j/a/p;

    iget-object v1, p1, Lcom/xiaomi/j/a/n;->g:Lcom/xiaomi/j/a/p;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->p()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lcom/xiaomi/j/a/n;->h:D

    iget-wide v2, p1, Lcom/xiaomi/j/a/n;->h:D

    invoke-static {v0, v1, v2, v3}, Lb/a/a/b;->a(DD)I

    move-result v0

    if-nez v0, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->r()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->r()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->r()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->i:Ljava/util/List;

    iget-object v1, p1, Lcom/xiaomi/j/a/n;->i:Ljava/util/List;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->t()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->t()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->t()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->j:Lcom/xiaomi/j/a/k;

    iget-object v1, p1, Lcom/xiaomi/j/a/n;->j:Lcom/xiaomi/j/a/k;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(J)Lcom/xiaomi/j/a/n;
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/j/a/n;->e:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/j/a/n;->b(Z)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/j/a/n;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/n;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lb/a/a/b/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/f;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->u()V

    sget-object v0, Lcom/xiaomi/j/a/n;->l:Lb/a/a/b/j;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/j;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/j/a/n;->m:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/j/a/n;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/j/a/n;->n:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_1
    sget-object v0, Lcom/xiaomi/j/a/n;->o:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-wide v0, p0, Lcom/xiaomi/j/a/n;->c:J

    invoke-virtual {p1, v0, v1}, Lb/a/a/b/e;->a(J)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/j/a/n;->p:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_2
    sget-object v0, Lcom/xiaomi/j/a/n;->q:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-wide v0, p0, Lcom/xiaomi/j/a/n;->e:J

    invoke-virtual {p1, v0, v1}, Lb/a/a/b/e;->a(J)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->f:Lcom/xiaomi/j/a/o;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/j/a/n;->r:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->f:Lcom/xiaomi/j/a/o;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/o;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(I)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/j/a/n;->g:Lcom/xiaomi/j/a/p;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaomi/j/a/n;->s:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->g:Lcom/xiaomi/j/a/p;

    invoke-virtual {v0, p1}, Lcom/xiaomi/j/a/p;->b(Lb/a/a/b/e;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/xiaomi/j/a/n;->t:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-wide v0, p0, Lcom/xiaomi/j/a/n;->h:D

    invoke-virtual {p1, v0, v1}, Lb/a/a/b/e;->a(D)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/j/a/n;->i:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->r()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/xiaomi/j/a/n;->u:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    new-instance v0, Lb/a/a/b/c;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/xiaomi/j/a/n;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lb/a/a/b/c;-><init>(BI)V

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/c;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/j/a/p;

    invoke-virtual {v0, p1}, Lcom/xiaomi/j/a/p;->b(Lb/a/a/b/e;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lb/a/a/b/e;->e()V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/j/a/n;->j:Lcom/xiaomi/j/a/k;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/xiaomi/j/a/n;->v:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->j:Lcom/xiaomi/j/a/k;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/k;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(I)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_8
    invoke-virtual {p1}, Lb/a/a/b/e;->c()V

    invoke-virtual {p1}, Lb/a/a/b/e;->a()V

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->w:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/j/a/n;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/n;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->w:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/xiaomi/j/a/n;

    invoke-virtual {p0, p1}, Lcom/xiaomi/j/a/n;->b(Lcom/xiaomi/j/a/n;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/j/a/n;->c:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/xiaomi/j/a/n;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/xiaomi/j/a/n;

    invoke-virtual {p0, p1}, Lcom/xiaomi/j/a/n;->a(Lcom/xiaomi/j/a/n;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->w:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/j/a/n;->e:J

    return-wide v0
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->w:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public k()Lcom/xiaomi/j/a/o;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->f:Lcom/xiaomi/j/a/o;

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->f:Lcom/xiaomi/j/a/o;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Lcom/xiaomi/j/a/p;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->g:Lcom/xiaomi/j/a/p;

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->g:Lcom/xiaomi/j/a/p;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()D
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/j/a/n;->h:D

    return-wide v0
.end method

.method public p()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->w:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/j/a/p;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->i:Ljava/util/List;

    return-object v0
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Lcom/xiaomi/j/a/k;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->j:Lcom/xiaomi/j/a/k;

    return-object v0
.end method

.method public t()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->j:Lcom/xiaomi/j/a/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GeoFencing("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/j/a/n;->a:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/j/a/n;->b:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/j/a/n;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/j/a/n;->d:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "createTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/j/a/n;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/j/a/n;->f:Lcom/xiaomi/j/a/o;

    if-nez v1, :cond_6

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "circleCenter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/j/a/n;->g:Lcom/xiaomi/j/a/p;

    if-nez v1, :cond_7

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "circleRadius:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/j/a/n;->h:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "polygonPoints:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/j/a/n;->i:Ljava/util/List;

    if-nez v1, :cond_8

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_5
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "coordinateProvider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/j/a/n;->j:Lcom/xiaomi/j/a/k;

    if-nez v1, :cond_9

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/j/a/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/j/a/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/xiaomi/j/a/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_6
    iget-object v1, p0, Lcom/xiaomi/j/a/n;->f:Lcom/xiaomi/j/a/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/xiaomi/j/a/n;->g:Lcom/xiaomi/j/a/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/xiaomi/j/a/n;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_9
    iget-object v1, p0, Lcom/xiaomi/j/a/n;->j:Lcom/xiaomi/j/a/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6
.end method

.method public u()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/f;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/j/a/n;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/j/a/n;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lb/a/a/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'name\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/j/a/n;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lb/a/a/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'packageName\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/j/a/n;->f:Lcom/xiaomi/j/a/o;

    if-nez v0, :cond_3

    new-instance v0, Lb/a/a/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'type\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/j/a/n;->j:Lcom/xiaomi/j/a/k;

    if-nez v0, :cond_4

    new-instance v0, Lb/a/a/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'coordinateProvider\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/j/a/n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method
