.class public Lcom/xiaomi/j/a/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/a;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/j/a/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/a/a",
        "<",
        "Lcom/xiaomi/j/a/w;",
        "Lcom/xiaomi/j/a/w$a;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/j/a/w$a;",
            "Lb/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lb/a/a/b/j;

.field private static final d:Lb/a/a/b/b;


# instance fields
.field public a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/xiaomi/j/a/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0xe

    const/4 v8, 0x1

    new-instance v0, Lb/a/a/b/j;

    const-string v1, "RegisteredGeoFencing"

    invoke-direct {v0, v1}, Lb/a/a/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/j/a/w;->c:Lb/a/a/b/j;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "geoFencings"

    invoke-direct {v0, v1, v9, v8}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/w;->d:Lb/a/a/b/b;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/j/a/w$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/xiaomi/j/a/w$a;->a:Lcom/xiaomi/j/a/w$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "geoFencings"

    new-instance v4, Lb/a/a/a/f;

    new-instance v5, Lb/a/a/a/g;

    const/16 v6, 0xc

    const-class v7, Lcom/xiaomi/j/a/n;

    invoke-direct {v5, v6, v7}, Lb/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v9, v5}, Lb/a/a/a/f;-><init>(BLb/a/a/a/c;)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/j/a/w;->b:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/j/a/w;

    sget-object v1, Lcom/xiaomi/j/a/w;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)Lcom/xiaomi/j/a/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/xiaomi/j/a/n;",
            ">;)",
            "Lcom/xiaomi/j/a/w;"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/j/a/w;->a:Ljava/util/Set;

    return-object p0
.end method

.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/xiaomi/j/a/n;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/j/a/w;->a:Ljava/util/Set;

    return-object v0
.end method

.method public a(Lb/a/a/b/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/f;
        }
    .end annotation

    invoke-virtual {p1}, Lb/a/a/b/e;->g()Lb/a/a/b/j;

    :goto_0
    invoke-virtual {p1}, Lb/a/a/b/e;->i()Lb/a/a/b/b;

    move-result-object v0

    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lb/a/a/b/e;->h()V

    invoke-virtual {p0}, Lcom/xiaomi/j/a/w;->c()V

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

    const/16 v2, 0xe

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lb/a/a/b/e;->o()Lb/a/a/b/i;

    move-result-object v1

    new-instance v0, Ljava/util/HashSet;

    iget v2, v1, Lb/a/a/b/i;->b:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/j/a/w;->a:Ljava/util/Set;

    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lb/a/a/b/i;->b:I

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/xiaomi/j/a/n;

    invoke-direct {v2}, Lcom/xiaomi/j/a/n;-><init>()V

    invoke-virtual {v2, p1}, Lcom/xiaomi/j/a/n;->a(Lb/a/a/b/e;)V

    iget-object v3, p0, Lcom/xiaomi/j/a/w;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lb/a/a/b/e;->p()V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/j/a/w;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/j/a/w;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/w;->b()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/w;->a:Ljava/util/Set;

    iget-object v2, p1, Lcom/xiaomi/j/a/w;->a:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/j/a/w;)I
    .locals 2

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
    invoke-virtual {p0}, Lcom/xiaomi/j/a/w;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/w;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/w;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/j/a/w;->a:Ljava/util/Set;

    iget-object v1, p1, Lcom/xiaomi/j/a/w;->a:Ljava/util/Set;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lb/a/a/b/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/f;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/j/a/w;->c()V

    sget-object v0, Lcom/xiaomi/j/a/w;->c:Lb/a/a/b/j;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/j;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/w;->a:Ljava/util/Set;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/j/a/w;->d:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    new-instance v0, Lb/a/a/b/i;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/xiaomi/j/a/w;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lb/a/a/b/i;-><init>(BI)V

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/i;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/w;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/j/a/n;

    invoke-virtual {v0, p1}, Lcom/xiaomi/j/a/n;->b(Lb/a/a/b/e;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lb/a/a/b/e;->f()V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_1
    invoke-virtual {p1}, Lb/a/a/b/e;->c()V

    invoke-virtual {p1}, Lb/a/a/b/e;->a()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/w;->a:Ljava/util/Set;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/f;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/j/a/w;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'geoFencings\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/j/a/w;->toString()Ljava/lang/String;

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

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/xiaomi/j/a/w;

    invoke-virtual {p0, p1}, Lcom/xiaomi/j/a/w;->b(Lcom/xiaomi/j/a/w;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/xiaomi/j/a/w;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/xiaomi/j/a/w;

    invoke-virtual {p0, p1}, Lcom/xiaomi/j/a/w;->a(Lcom/xiaomi/j/a/w;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RegisteredGeoFencing("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "geoFencings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/j/a/w;->a:Ljava/util/Set;

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/j/a/w;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
