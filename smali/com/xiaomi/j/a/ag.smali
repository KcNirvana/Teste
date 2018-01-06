.class public Lcom/xiaomi/j/a/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/a;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/j/a/ag$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/a/a",
        "<",
        "Lcom/xiaomi/j/a/ag;",
        "Lcom/xiaomi/j/a/ag$a;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/j/a/ag$a;",
            "Lb/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Lb/a/a/b/j;

.field private static final k:Lb/a/a/b/b;

.field private static final l:Lb/a/a/b/b;

.field private static final m:Lb/a/a/b/b;

.field private static final n:Lb/a/a/b/b;

.field private static final o:Lb/a/a/b/b;

.field private static final p:Lb/a/a/b/b;

.field private static final q:Lb/a/a/b/b;

.field private static final r:Lb/a/a/b/b;


# instance fields
.field public a:Lcom/xiaomi/j/a/a;

.field public b:Z

.field public c:Z

.field public d:Ljava/nio/ByteBuffer;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lcom/xiaomi/j/a/y;

.field public h:Lcom/xiaomi/j/a/v;

.field private s:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v3, 0x8

    const/16 v10, 0xc

    const/16 v9, 0xb

    const/4 v8, 0x1

    const/4 v7, 0x2

    new-instance v0, Lb/a/a/b/j;

    const-string v1, "XmPushActionContainer"

    invoke-direct {v0, v1}, Lb/a/a/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/j/a/ag;->j:Lb/a/a/b/j;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "action"

    invoke-direct {v0, v1, v3, v8}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ag;->k:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "encryptAction"

    invoke-direct {v0, v1, v7, v7}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ag;->l:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "isRequest"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ag;->m:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "pushAction"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v9, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ag;->n:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "appid"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v9, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ag;->o:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "packageName"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ag;->p:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "target"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v10, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ag;->q:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "metaInfo"

    invoke-direct {v0, v1, v10, v3}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ag;->r:Lb/a/a/b/b;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/j/a/ag$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/xiaomi/j/a/ag$a;->a:Lcom/xiaomi/j/a/ag$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "action"

    new-instance v4, Lb/a/a/a/a;

    const/16 v5, 0x10

    const-class v6, Lcom/xiaomi/j/a/a;

    invoke-direct {v4, v5, v6}, Lb/a/a/a/a;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ag$a;->b:Lcom/xiaomi/j/a/ag$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "encryptAction"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v7}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ag$a;->c:Lcom/xiaomi/j/a/ag$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "isRequest"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v7}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ag$a;->d:Lcom/xiaomi/j/a/ag$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "pushAction"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v9}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ag$a;->e:Lcom/xiaomi/j/a/ag$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "appid"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v9}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ag$a;->f:Lcom/xiaomi/j/a/ag$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "packageName"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v9}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ag$a;->g:Lcom/xiaomi/j/a/ag$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "target"

    new-instance v4, Lb/a/a/a/g;

    const-class v5, Lcom/xiaomi/j/a/y;

    invoke-direct {v4, v10, v5}, Lb/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ag$a;->h:Lcom/xiaomi/j/a/ag$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "metaInfo"

    new-instance v4, Lb/a/a/a/g;

    const-class v5, Lcom/xiaomi/j/a/v;

    invoke-direct {v4, v10, v5}, Lb/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/j/a/ag;->i:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/j/a/ag;

    sget-object v1, Lcom/xiaomi/j/a/ag;->i:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/j/a/ag;->s:Ljava/util/BitSet;

    iput-boolean v2, p0, Lcom/xiaomi/j/a/ag;->b:Z

    iput-boolean v2, p0, Lcom/xiaomi/j/a/ag;->c:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/j/a/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->a:Lcom/xiaomi/j/a/a;

    return-object v0
.end method

.method public a(Lcom/xiaomi/j/a/a;)Lcom/xiaomi/j/a/ag;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/ag;->a:Lcom/xiaomi/j/a/a;

    return-object p0
.end method

.method public a(Lcom/xiaomi/j/a/v;)Lcom/xiaomi/j/a/ag;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/ag;->h:Lcom/xiaomi/j/a/v;

    return-object p0
.end method

.method public a(Lcom/xiaomi/j/a/y;)Lcom/xiaomi/j/a/ag;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/ag;->g:Lcom/xiaomi/j/a/y;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/j/a/ag;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/ag;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/nio/ByteBuffer;)Lcom/xiaomi/j/a/ag;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/ag;->d:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public a(Z)Lcom/xiaomi/j/a/ag;
    .locals 1

    iput-boolean p1, p0, Lcom/xiaomi/j/a/ag;->b:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/j/a/ag;->b(Z)V

    return-object p0
.end method

.method public a(Lb/a/a/b/e;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/f;
        }
    .end annotation

    const/16 v6, 0xc

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0xb

    invoke-virtual {p1}, Lb/a/a/b/e;->g()Lb/a/a/b/j;

    :goto_0
    invoke-virtual {p1}, Lb/a/a/b/e;->i()Lb/a/a/b/b;

    move-result-object v0

    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lb/a/a/b/e;->h()V

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->d()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lb/a/a/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'encryptAction\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->toString()Ljava/lang/String;

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

    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    :goto_1
    invoke-virtual {p1}, Lb/a/a/b/e;->j()V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lb/a/a/b/e;->t()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/j/a/a;->a(I)Lcom/xiaomi/j/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/ag;->a:Lcom/xiaomi/j/a/a;

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Lb/a/a/b/e;->q()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/j/a/ag;->b:Z

    invoke-virtual {p0, v4}, Lcom/xiaomi/j/a/ag;->b(Z)V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v5, :cond_3

    invoke-virtual {p1}, Lb/a/a/b/e;->q()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/j/a/ag;->c:Z

    invoke-virtual {p0, v4}, Lcom/xiaomi/j/a/ag;->d(Z)V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v3, :cond_4

    invoke-virtual {p1}, Lb/a/a/b/e;->x()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/ag;->d:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v3, :cond_5

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/ag;->e:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :pswitch_5
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v3, :cond_6

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/ag;->f:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :pswitch_6
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v6, :cond_7

    new-instance v0, Lcom/xiaomi/j/a/y;

    invoke-direct {v0}, Lcom/xiaomi/j/a/y;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/j/a/ag;->g:Lcom/xiaomi/j/a/y;

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->g:Lcom/xiaomi/j/a/y;

    invoke-virtual {v0, p1}, Lcom/xiaomi/j/a/y;->a(Lb/a/a/b/e;)V

    goto/16 :goto_1

    :cond_7
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    :pswitch_7
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v6, :cond_8

    new-instance v0, Lcom/xiaomi/j/a/v;

    invoke-direct {v0}, Lcom/xiaomi/j/a/v;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/j/a/ag;->h:Lcom/xiaomi/j/a/v;

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->h:Lcom/xiaomi/j/a/v;

    invoke-virtual {v0, p1}, Lcom/xiaomi/j/a/v;->a(Lb/a/a/b/e;)V

    goto/16 :goto_1

    :cond_8
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->e()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lb/a/a/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'isRequest\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->o()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/j/a/ag;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->b()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ag;->a:Lcom/xiaomi/j/a/a;

    iget-object v2, p1, Lcom/xiaomi/j/a/ag;->a:Lcom/xiaomi/j/a/a;

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-boolean v1, p0, Lcom/xiaomi/j/a/ag;->b:Z

    iget-boolean v2, p1, Lcom/xiaomi/j/a/ag;->b:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/xiaomi/j/a/ag;->c:Z

    iget-boolean v2, p1, Lcom/xiaomi/j/a/ag;->c:Z

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->g()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->g()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ag;->d:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/xiaomi/j/a/ag;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->i()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ag;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/ag;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->k()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->k()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ag;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/ag;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->l()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->l()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ag;->g:Lcom/xiaomi/j/a/y;

    iget-object v2, p1, Lcom/xiaomi/j/a/ag;->g:Lcom/xiaomi/j/a/y;

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/y;->a(Lcom/xiaomi/j/a/y;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->n()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->n()Z

    move-result v2

    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ag;->h:Lcom/xiaomi/j/a/v;

    iget-object v2, p1, Lcom/xiaomi/j/a/ag;->h:Lcom/xiaomi/j/a/v;

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/v;->a(Lcom/xiaomi/j/a/v;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/j/a/ag;)I
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
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->a:Lcom/xiaomi/j/a/a;

    iget-object v1, p1, Lcom/xiaomi/j/a/ag;->a:Lcom/xiaomi/j/a/a;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/xiaomi/j/a/ag;->b:Z

    iget-boolean v1, p1, Lcom/xiaomi/j/a/ag;->b:Z

    invoke-static {v0, v1}, Lb/a/a/b;->a(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/xiaomi/j/a/ag;->c:Z

    iget-boolean v1, p1, Lcom/xiaomi/j/a/ag;->c:Z

    invoke-static {v0, v1}, Lb/a/a/b;->a(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->d:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/xiaomi/j/a/ag;->d:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/j/a/ag;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/j/a/ag;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->l()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->g:Lcom/xiaomi/j/a/y;

    iget-object v1, p1, Lcom/xiaomi/j/a/ag;->g:Lcom/xiaomi/j/a/y;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ag;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->h:Lcom/xiaomi/j/a/v;

    iget-object v1, p1, Lcom/xiaomi/j/a/ag;->h:Lcom/xiaomi/j/a/v;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/j/a/ag;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/ag;->f:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lb/a/a/b/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/f;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->o()V

    sget-object v0, Lcom/xiaomi/j/a/ag;->j:Lb/a/a/b/j;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/j;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->a:Lcom/xiaomi/j/a/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/j/a/ag;->k:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->a:Lcom/xiaomi/j/a/a;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/a;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(I)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_0
    sget-object v0, Lcom/xiaomi/j/a/ag;->l:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-boolean v0, p0, Lcom/xiaomi/j/a/ag;->b:Z

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Z)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    sget-object v0, Lcom/xiaomi/j/a/ag;->m:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-boolean v0, p0, Lcom/xiaomi/j/a/ag;->c:Z

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Z)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->d:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/j/a/ag;->n:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/j/a/ag;->o:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/j/a/ag;->p:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->g:Lcom/xiaomi/j/a/y;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaomi/j/a/ag;->q:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->g:Lcom/xiaomi/j/a/y;

    invoke-virtual {v0, p1}, Lcom/xiaomi/j/a/y;->b(Lb/a/a/b/e;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->h:Lcom/xiaomi/j/a/v;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/xiaomi/j/a/ag;->r:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->h:Lcom/xiaomi/j/a/v;

    invoke-virtual {v0, p1}, Lcom/xiaomi/j/a/v;->b(Lb/a/a/b/e;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_5
    invoke-virtual {p1}, Lb/a/a/b/e;->c()V

    invoke-virtual {p1}, Lb/a/a/b/e;->a()V

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->s:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->a:Lcom/xiaomi/j/a/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Z)Lcom/xiaomi/j/a/ag;
    .locals 1

    iput-boolean p1, p0, Lcom/xiaomi/j/a/ag;->c:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/j/a/ag;->d(Z)V

    return-object p0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/j/a/ag;->b:Z

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/xiaomi/j/a/ag;

    invoke-virtual {p0, p1}, Lcom/xiaomi/j/a/ag;->b(Lcom/xiaomi/j/a/ag;)I

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->s:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->s:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->s:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

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
    instance-of v1, p1, Lcom/xiaomi/j/a/ag;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/xiaomi/j/a/ag;

    invoke-virtual {p0, p1}, Lcom/xiaomi/j/a/ag;->a(Lcom/xiaomi/j/a/ag;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->d:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lb/a/a/b;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/j/a/ag;->a(Ljava/nio/ByteBuffer;)Lcom/xiaomi/j/a/ag;

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->d:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->e:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->f:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->g:Lcom/xiaomi/j/a/y;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Lcom/xiaomi/j/a/v;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->h:Lcom/xiaomi/j/a/v;

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->h:Lcom/xiaomi/j/a/v;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/f;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->a:Lcom/xiaomi/j/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'action\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->d:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    new-instance v0, Lb/a/a/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'pushAction\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/j/a/ag;->g:Lcom/xiaomi/j/a/y;

    if-nez v0, :cond_2

    new-instance v0, Lb/a/a/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'target\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XmPushActionContainer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/j/a/ag;->a:Lcom/xiaomi/j/a/a;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "encryptAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/j/a/ag;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isRequest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/j/a/ag;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pushAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/j/a/ag;->d:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "appid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/j/a/ag;->e:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/j/a/ag;->f:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_3
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/j/a/ag;->g:Lcom/xiaomi/j/a/y;

    if-nez v1, :cond_7

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ag;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "metaInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/j/a/ag;->h:Lcom/xiaomi/j/a/v;

    if-nez v1, :cond_8

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_5
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/j/a/ag;->a:Lcom/xiaomi/j/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/j/a/ag;->d:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lb/a/a/b;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/xiaomi/j/a/ag;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/xiaomi/j/a/ag;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/xiaomi/j/a/ag;->g:Lcom/xiaomi/j/a/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/xiaomi/j/a/ag;->h:Lcom/xiaomi/j/a/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method
