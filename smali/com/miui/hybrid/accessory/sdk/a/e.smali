.class public Lcom/miui/hybrid/accessory/sdk/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/miui/hybrid/accessory/a/f/a;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final bfX:Ljava/util/Map;

.field private static final bfY:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfZ:Lcom/miui/hybrid/accessory/a/f/b/i;

.field private static final bga:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bgb:Lcom/miui/hybrid/accessory/a/f/b/k;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0xe

    const/4 v6, 0x1

    const/16 v5, 0xb

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/i;

    const-string/jumbo v1, "Page"

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/e;->bfZ:Lcom/miui/hybrid/accessory/a/f/b/i;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "downloadUrl"

    invoke-direct {v0, v1, v5, v6}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/e;->bga:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "name"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/e;->bgb:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "keywords"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/e;->bfY:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/miui/hybrid/accessory/sdk/a/e$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/e$a;->bgv:Lcom/miui/hybrid/accessory/sdk/a/e$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v5}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "downloadUrl"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/e$a;->bgr:Lcom/miui/hybrid/accessory/sdk/a/e$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v5}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "name"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/e$a;->bgs:Lcom/miui/hybrid/accessory/sdk/a/e$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/f;

    new-instance v4, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v4, v5}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    invoke-direct {v3, v7, v4}, Lcom/miui/hybrid/accessory/a/f/a/f;-><init>(BLcom/miui/hybrid/accessory/a/f/a/c;)V

    const-string/jumbo v4, "keywords"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/e;->bfX:Ljava/util/Map;

    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/e;->bfX:Ljava/util/Map;

    const-class v1, Lcom/miui/hybrid/accessory/sdk/a/e;

    invoke-static {v1, v0}, Lcom/miui/hybrid/accessory/a/f/a/b;->bDq(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/e;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/e;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bCb(Lcom/miui/hybrid/accessory/a/f/b/c;)V
    .locals 6

    const/16 v5, 0xb

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->a()Lcom/miui/hybrid/accessory/a/f/b/i;

    :goto_0
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->c()Lcom/miui/hybrid/accessory/a/f/b/k;

    move-result-object v0

    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eqz v2, :cond_4

    iget-short v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->bhN:S

    packed-switch v2, :pswitch_data_0

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->d()V

    goto :goto_0

    :pswitch_0
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v2, v5, :cond_0

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/e;->a:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v2, v5, :cond_1

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/e;->b:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    const/16 v3, 0xe

    if-eq v2, v3, :cond_2

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->i()Lcom/miui/hybrid/accessory/a/f/b/d;

    move-result-object v2

    new-instance v0, Ljava/util/HashSet;

    iget v3, v2, Lcom/miui/hybrid/accessory/a/f/b/d;->b:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/e;->c:Ljava/util/Set;

    move v0, v1

    :goto_2
    iget v3, v2, Lcom/miui/hybrid/accessory/a/f/b/d;->b:I

    if-lt v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->j()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/hybrid/accessory/sdk/a/e;->c:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->b()V

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/e;->d()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bCp(Lcom/miui/hybrid/accessory/sdk/a/e;)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/e;->a()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/e;->a()Z

    move-result v1

    if-eqz v0, :cond_3

    :cond_0
    if-nez v0, :cond_7

    :cond_1
    return v2

    :cond_2
    return v2

    :cond_3
    if-nez v1, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/e;->b()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/e;->b()Z

    move-result v1

    if-eqz v0, :cond_8

    :cond_5
    if-nez v0, :cond_c

    :cond_6
    return v2

    :cond_7
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/e;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_8
    if-nez v1, :cond_5

    :cond_9
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/e;->c()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/e;->c()Z

    move-result v1

    if-eqz v0, :cond_d

    :cond_a
    if-nez v0, :cond_f

    :cond_b
    return v2

    :cond_c
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/e;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return v2

    :cond_d
    if-nez v1, :cond_a

    :cond_e
    const/4 v0, 0x1

    return v0

    :cond_f
    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/e;->c:Ljava/util/Set;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/e;->c:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    return v2
.end method

.method public bCq(Lcom/miui/hybrid/accessory/sdk/a/e;)I
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/e;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/e;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/e;->a()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/e;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/e;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/e;->b()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_1
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/e;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/e;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/e;->c()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_2
    return v2

    :cond_3
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

    return v0

    :cond_4
    return v0

    :cond_5
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/e;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/e;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/e;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/e;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/e;->c:Ljava/util/Set;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/e;->c:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->bDF(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/e;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/hybrid/accessory/sdk/a/e;

    invoke-virtual {p0, p1}, Lcom/miui/hybrid/accessory/sdk/a/e;->bCq(Lcom/miui/hybrid/accessory/sdk/a/e;)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/e;->c:Ljava/util/Set;

    if-eqz v0, :cond_2

    return-void

    :cond_0
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'downloadUrl\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'name\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'keywords\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/hybrid/accessory/sdk/a/e;

    if-nez v0, :cond_1

    return v1

    :cond_0
    return v1

    :cond_1
    check-cast p1, Lcom/miui/hybrid/accessory/sdk/a/e;

    invoke-virtual {p0, p1}, Lcom/miui/hybrid/accessory/sdk/a/e;->bCp(Lcom/miui/hybrid/accessory/sdk/a/e;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Page("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "downloadUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/e;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/e;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "keywords:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/e;->c:Ljava/util/Set;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/e;->c:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
