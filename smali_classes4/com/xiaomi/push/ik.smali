.class public Lcom/xiaomi/push/ik;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/ir;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/push/ir<",
        "Lcom/xiaomi/push/ik;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/push/iz;

.field private static final a:Lcom/xiaomi/push/jh;

.field private static final b:Lcom/xiaomi/push/iz;

.field private static final c:Lcom/xiaomi/push/iz;

.field private static final d:Lcom/xiaomi/push/iz;

.field private static final e:Lcom/xiaomi/push/iz;

.field private static final f:Lcom/xiaomi/push/iz;

.field private static final g:Lcom/xiaomi/push/iz;

.field private static final h:Lcom/xiaomi/push/iz;


# instance fields
.field public a:Lcom/xiaomi/push/hv;

.field public a:Ljava/lang/String;

.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/xiaomi/push/jh;

    const-string v1, "XmPushActionSubscription"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/jh;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/ik;->a:Lcom/xiaomi/push/jh;

    new-instance v0, Lcom/xiaomi/push/iz;

    const-string v1, ""

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/iz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ik;->a:Lcom/xiaomi/push/iz;

    new-instance v0, Lcom/xiaomi/push/iz;

    const-string v1, ""

    const/16 v3, 0xc

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/xiaomi/push/iz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ik;->b:Lcom/xiaomi/push/iz;

    new-instance v0, Lcom/xiaomi/push/iz;

    const-string v1, ""

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/iz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ik;->c:Lcom/xiaomi/push/iz;

    new-instance v0, Lcom/xiaomi/push/iz;

    const-string v1, ""

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/iz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ik;->d:Lcom/xiaomi/push/iz;

    new-instance v0, Lcom/xiaomi/push/iz;

    const-string v1, ""

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/iz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ik;->e:Lcom/xiaomi/push/iz;

    new-instance v0, Lcom/xiaomi/push/iz;

    const-string v1, ""

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/iz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ik;->f:Lcom/xiaomi/push/iz;

    new-instance v0, Lcom/xiaomi/push/iz;

    const-string v1, ""

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/iz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ik;->g:Lcom/xiaomi/push/iz;

    new-instance v0, Lcom/xiaomi/push/iz;

    const-string v1, ""

    const/16 v2, 0xf

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/iz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/ik;->h:Lcom/xiaomi/push/iz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/ik;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ik;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/push/ik;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ik;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/is;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ik;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/push/ik;->a:Lcom/xiaomi/push/hv;

    iget-object v1, p1, Lcom/xiaomi/push/ik;->a:Lcom/xiaomi/push/hv;

    invoke-static {v0, v1}, Lcom/xiaomi/push/is;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ik;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/push/ik;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ik;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/is;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ik;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/push/ik;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ik;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/is;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ik;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xiaomi/push/ik;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ik;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/is;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ik;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/xiaomi/push/ik;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ik;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/is;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ik;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->g()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/xiaomi/push/ik;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/push/ik;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/is;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ik;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->h()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/xiaomi/push/ik;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/xiaomi/push/ik;->a:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/xiaomi/push/is;->a(Ljava/util/List;Ljava/util/List;)I

    move-result p1

    if-eqz p1, :cond_10

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/push/ik;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/ik;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/ik;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/push/ik;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/ik;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/push/jd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'topic\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/push/jd;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/xiaomi/push/jd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/push/jd;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/xiaomi/push/jd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/push/jd;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/xiaomi/push/jc;)V
    .locals 4

    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->a()Lcom/xiaomi/push/jh;

    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->a()Lcom/xiaomi/push/iz;

    move-result-object v0

    iget-byte v1, v0, Lcom/xiaomi/push/iz;->a:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->f()V

    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->a()V

    return-void

    :cond_0
    iget-short v1, v0, Lcom/xiaomi/push/iz;->a:S

    const/16 v2, 0xb

    packed-switch v1, :pswitch_data_0

    :cond_1
    iget-byte v0, v0, Lcom/xiaomi/push/iz;->a:B

    invoke-static {p1, v0}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jc;B)V

    goto/16 :goto_2

    :pswitch_0
    iget-byte v1, v0, Lcom/xiaomi/push/iz;->a:B

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->a()Lcom/xiaomi/push/ja;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget v2, v0, Lcom/xiaomi/push/ja;->a:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/push/ik;->a:Ljava/util/List;

    const/4 v1, 0x0

    :goto_1
    iget v2, v0, Lcom/xiaomi/push/ja;->a:I

    if-ge v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/push/ik;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->i()V

    goto :goto_2

    :pswitch_1
    iget-byte v1, v0, Lcom/xiaomi/push/iz;->a:B

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ik;->f:Ljava/lang/String;

    goto :goto_2

    :pswitch_2
    iget-byte v1, v0, Lcom/xiaomi/push/iz;->a:B

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ik;->e:Ljava/lang/String;

    goto :goto_2

    :pswitch_3
    iget-byte v1, v0, Lcom/xiaomi/push/iz;->a:B

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ik;->d:Ljava/lang/String;

    goto :goto_2

    :pswitch_4
    iget-byte v1, v0, Lcom/xiaomi/push/iz;->a:B

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ik;->c:Ljava/lang/String;

    goto :goto_2

    :pswitch_5
    iget-byte v1, v0, Lcom/xiaomi/push/iz;->a:B

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ik;->b:Ljava/lang/String;

    goto :goto_2

    :pswitch_6
    iget-byte v1, v0, Lcom/xiaomi/push/iz;->a:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/xiaomi/push/hv;

    invoke-direct {v0}, Lcom/xiaomi/push/hv;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/ik;->a:Lcom/xiaomi/push/hv;

    iget-object v0, p0, Lcom/xiaomi/push/ik;->a:Lcom/xiaomi/push/hv;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/hv;->a(Lcom/xiaomi/push/jc;)V

    goto :goto_2

    :pswitch_7
    iget-byte v1, v0, Lcom/xiaomi/push/iz;->a:B

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/ik;->a:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->g()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/ik;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Lcom/xiaomi/push/ik;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ik;->a()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_19

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/push/ik;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ik;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ik;->b()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_19

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/xiaomi/push/ik;->a:Lcom/xiaomi/push/hv;

    iget-object v2, p1, Lcom/xiaomi/push/ik;->a:Lcom/xiaomi/push/hv;

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/hv;->a(Lcom/xiaomi/push/hv;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ik;->c()Z

    move-result v2

    if-nez v1, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v1, :cond_19

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/xiaomi/push/ik;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ik;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ik;->d()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_c

    :cond_a
    if-eqz v1, :cond_19

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/xiaomi/push/ik;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ik;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->e()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ik;->e()Z

    move-result v2

    if-nez v1, :cond_d

    if-eqz v2, :cond_f

    :cond_d
    if-eqz v1, :cond_19

    if-nez v2, :cond_e

    goto :goto_0

    :cond_e
    iget-object v1, p0, Lcom/xiaomi/push/ik;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ik;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v0

    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->f()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ik;->f()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_12

    :cond_10
    if-eqz v1, :cond_19

    if-nez v2, :cond_11

    goto :goto_0

    :cond_11
    iget-object v1, p0, Lcom/xiaomi/push/ik;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ik;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v0

    :cond_12
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->g()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ik;->g()Z

    move-result v2

    if-nez v1, :cond_13

    if-eqz v2, :cond_15

    :cond_13
    if-eqz v1, :cond_19

    if-nez v2, :cond_14

    goto :goto_0

    :cond_14
    iget-object v1, p0, Lcom/xiaomi/push/ik;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/push/ik;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v0

    :cond_15
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ik;->h()Z

    move-result v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_18

    :cond_16
    if-eqz v1, :cond_19

    if-nez v2, :cond_17

    goto :goto_0

    :cond_17
    iget-object v1, p0, Lcom/xiaomi/push/ik;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/xiaomi/push/ik;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    return v0

    :cond_18
    const/4 p1, 0x1

    return p1

    :cond_19
    :goto_0
    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/push/ik;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/ik;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcom/xiaomi/push/jc;)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->a()V

    sget-object v0, Lcom/xiaomi/push/ik;->a:Lcom/xiaomi/push/jh;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jc;->a(Lcom/xiaomi/push/jh;)V

    iget-object v0, p0, Lcom/xiaomi/push/ik;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/push/ik;->a:Lcom/xiaomi/push/iz;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jc;->a(Lcom/xiaomi/push/iz;)V

    iget-object v0, p0, Lcom/xiaomi/push/ik;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jc;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->b()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/ik;->a:Lcom/xiaomi/push/hv;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/push/ik;->b:Lcom/xiaomi/push/iz;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jc;->a(Lcom/xiaomi/push/iz;)V

    iget-object v0, p0, Lcom/xiaomi/push/ik;->a:Lcom/xiaomi/push/hv;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/hv;->b(Lcom/xiaomi/push/jc;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->b()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/ik;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/push/ik;->c:Lcom/xiaomi/push/iz;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jc;->a(Lcom/xiaomi/push/iz;)V

    iget-object v0, p0, Lcom/xiaomi/push/ik;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jc;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->b()V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/push/ik;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/push/ik;->d:Lcom/xiaomi/push/iz;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jc;->a(Lcom/xiaomi/push/iz;)V

    iget-object v0, p0, Lcom/xiaomi/push/ik;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jc;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->b()V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/push/ik;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaomi/push/ik;->e:Lcom/xiaomi/push/iz;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jc;->a(Lcom/xiaomi/push/iz;)V

    iget-object v0, p0, Lcom/xiaomi/push/ik;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jc;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->b()V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/push/ik;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/xiaomi/push/ik;->f:Lcom/xiaomi/push/iz;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jc;->a(Lcom/xiaomi/push/iz;)V

    iget-object v0, p0, Lcom/xiaomi/push/ik;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jc;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->b()V

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/push/ik;->f:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaomi/push/ik;->g:Lcom/xiaomi/push/iz;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jc;->a(Lcom/xiaomi/push/iz;)V

    iget-object v0, p0, Lcom/xiaomi/push/ik;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jc;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->b()V

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/push/ik;->a:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/xiaomi/push/ik;->h:Lcom/xiaomi/push/iz;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jc;->a(Lcom/xiaomi/push/iz;)V

    new-instance v0, Lcom/xiaomi/push/ja;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/xiaomi/push/ik;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/ja;-><init>(BI)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/jc;->a(Lcom/xiaomi/push/ja;)V

    iget-object v0, p0, Lcom/xiaomi/push/ik;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/xiaomi/push/jc;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->e()V

    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->b()V

    :cond_8
    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->c()V

    invoke-virtual {p1}, Lcom/xiaomi/push/jc;->a()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/ik;->a:Lcom/xiaomi/push/hv;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/push/ik;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/ik;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/ik;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/xiaomi/push/ik;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/ik;->a(Lcom/xiaomi/push/ik;)I

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/push/ik;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/ik;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/ik;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Ljava/lang/String;)Lcom/xiaomi/push/ik;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/ik;->f:Ljava/lang/String;

    return-object p0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/ik;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/xiaomi/push/ik;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/xiaomi/push/ik;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/ik;->a(Lcom/xiaomi/push/ik;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/ik;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/ik;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/ik;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XmPushActionSubscription("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "debug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ik;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/push/ik;->a:Ljava/lang/String;

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ik;->a:Lcom/xiaomi/push/hv;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/push/ik;->a:Lcom/xiaomi/push/hv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3
    const/4 v1, 0x0

    :cond_4
    if-nez v1, :cond_5

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ik;->b:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, "null"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/xiaomi/push/ik;->b:Ljava/lang/String;

    goto :goto_4

    :goto_5
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ik;->c:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, "null"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_7
    iget-object v1, p0, Lcom/xiaomi/push/ik;->c:Ljava/lang/String;

    goto :goto_6

    :goto_7
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "topic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ik;->d:Ljava/lang/String;

    if-nez v1, :cond_8

    const-string v1, "null"

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_8
    iget-object v1, p0, Lcom/xiaomi/push/ik;->d:Ljava/lang/String;

    goto :goto_8

    :goto_9
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->f()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ik;->e:Ljava/lang/String;

    if-nez v1, :cond_9

    const-string v1, "null"

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_9
    iget-object v1, p0, Lcom/xiaomi/push/ik;->e:Ljava/lang/String;

    goto :goto_a

    :cond_a
    :goto_b
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->g()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ik;->f:Ljava/lang/String;

    if-nez v1, :cond_b

    const-string v1, "null"

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_b
    iget-object v1, p0, Lcom/xiaomi/push/ik;->f:Ljava/lang/String;

    goto :goto_c

    :cond_c
    :goto_d
    invoke-virtual {p0}, Lcom/xiaomi/push/ik;->h()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "aliases:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ik;->a:Ljava/util/List;

    if-nez v1, :cond_d

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_d
    iget-object v1, p0, Lcom/xiaomi/push/ik;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_e
    :goto_e
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
