.class public Lcom/miui/hybrid/accessory/sdk/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/miui/hybrid/accessory/a/f/a;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final bgV:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bgW:Lcom/miui/hybrid/accessory/a/f/b/k;

.field public static final bgX:Ljava/util/Map;

.field private static final bgY:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bgZ:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bha:Lcom/miui/hybrid/accessory/a/f/b/i;

.field private static final bhb:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bhc:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bhd:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bhe:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bhf:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bhg:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bhh:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bhi:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bhj:Lcom/miui/hybrid/accessory/a/f/b/k;


# instance fields
.field private C:Ljava/util/BitSet;

.field public a:Lcom/miui/hybrid/accessory/sdk/a/a;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:J

.field public j:Ljava/nio/ByteBuffer;

.field public k:Ljava/lang/String;

.field public l:Lcom/miui/hybrid/accessory/sdk/a/f;

.field public m:Lcom/miui/hybrid/accessory/sdk/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/16 v7, 0xc

    const/4 v6, 0x2

    const/16 v5, 0xb

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/i;

    const-string/jumbo v1, "AppQueryResultItem"

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/b;->bha:Lcom/miui/hybrid/accessory/a/f/b/i;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "appInfo"

    invoke-direct {v0, v1, v7, v8}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/b;->bhj:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "minMinaVersionCode"

    invoke-direct {v0, v1, v9, v6}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/b;->bhc:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "template"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/b;->bgY:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "icon"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v5, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/b;->bgW:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "title"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v5, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/b;->bhi:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "description"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/b;->bgZ:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "category"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v5, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/b;->bhe:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "buttonText"

    invoke-direct {v0, v1, v5, v9}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/b;->bhh:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "size"

    const/16 v2, 0xa

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/b;->bgV:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "specialData"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v5, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/b;->bhb:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "pageName"

    invoke-direct {v0, v1, v5, v5}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/b;->bhf:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "state"

    invoke-direct {v0, v1, v7, v7}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/b;->bhg:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "setting"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v7, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/b;->bhd:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/miui/hybrid/accessory/sdk/a/b$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/b$a;->bge:Lcom/miui/hybrid/accessory/sdk/a/b$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/g;

    const-class v4, Lcom/miui/hybrid/accessory/sdk/a/a;

    invoke-direct {v3, v7, v4}, Lcom/miui/hybrid/accessory/a/f/a/g;-><init>(BLjava/lang/Class;)V

    const-string/jumbo v4, "appInfo"

    invoke-direct {v2, v4, v8, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/b$a;->bgd:Lcom/miui/hybrid/accessory/sdk/a/b$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v9}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "minMinaVersionCode"

    invoke-direct {v2, v4, v8, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/b$a;->bgf:Lcom/miui/hybrid/accessory/sdk/a/b$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v5}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "template"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/b$a;->bgj:Lcom/miui/hybrid/accessory/sdk/a/b$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v5}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "icon"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/b$a;->bgg:Lcom/miui/hybrid/accessory/sdk/a/b$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v5}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "title"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/b$a;->bgm:Lcom/miui/hybrid/accessory/sdk/a/b$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v5}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "description"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/b$a;->bgo:Lcom/miui/hybrid/accessory/sdk/a/b$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v5}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "category"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/b$a;->bgq:Lcom/miui/hybrid/accessory/sdk/a/b$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v5}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "buttonText"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/b$a;->bgp:Lcom/miui/hybrid/accessory/sdk/a/b$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "size"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/b$a;->bgn:Lcom/miui/hybrid/accessory/sdk/a/b$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v5}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "specialData"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/b$a;->bgh:Lcom/miui/hybrid/accessory/sdk/a/b$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v5}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "pageName"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/b$a;->bgk:Lcom/miui/hybrid/accessory/sdk/a/b$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/g;

    const-class v4, Lcom/miui/hybrid/accessory/sdk/a/f;

    invoke-direct {v3, v7, v4}, Lcom/miui/hybrid/accessory/a/f/a/g;-><init>(BLjava/lang/Class;)V

    const-string/jumbo v4, "state"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/b$a;->bgi:Lcom/miui/hybrid/accessory/sdk/a/b$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/g;

    const-class v4, Lcom/miui/hybrid/accessory/sdk/a/g;

    invoke-direct {v3, v7, v4}, Lcom/miui/hybrid/accessory/a/f/a/g;-><init>(BLjava/lang/Class;)V

    const-string/jumbo v4, "setting"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/b;->bgX:Ljava/util/Map;

    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/b;->bgX:Ljava/util/Map;

    const-class v1, Lcom/miui/hybrid/accessory/sdk/a/b;

    invoke-static {v1, v0}, Lcom/miui/hybrid/accessory/a/f/a/b;->bDq(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->C:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public a()Lcom/miui/hybrid/accessory/sdk/a/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->a:Lcom/miui/hybrid/accessory/sdk/a/a;

    return-object v0
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->C:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->a:Lcom/miui/hybrid/accessory/sdk/a/a;

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

    const/4 v5, 0x1

    const/16 v4, 0xc

    const/16 v3, 0xb

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->a()Lcom/miui/hybrid/accessory/a/f/b/i;

    :goto_0
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->c()Lcom/miui/hybrid/accessory/a/f/b/k;

    move-result-object v0

    iget-byte v1, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eqz v1, :cond_d

    iget-short v1, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->bhN:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->d()V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v1, v4, :cond_0

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/miui/hybrid/accessory/sdk/a/a;

    invoke-direct {v0}, Lcom/miui/hybrid/accessory/sdk/a/a;-><init>()V

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->a:Lcom/miui/hybrid/accessory/sdk/a/a;

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->a:Lcom/miui/hybrid/accessory/sdk/a/a;

    invoke-virtual {v0, p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->bCb(Lcom/miui/hybrid/accessory/a/f/b/c;)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->n()I

    move-result v0

    iput v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->b:I

    invoke-virtual {p0, v5}, Lcom/miui/hybrid/accessory/sdk/a/b;->a(Z)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v1, v3, :cond_2

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->c:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    iget-byte v1, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v1, v3, :cond_3

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->d:Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    iget-byte v1, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v1, v3, :cond_4

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->e:Ljava/lang/String;

    goto :goto_1

    :pswitch_5
    iget-byte v1, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v1, v3, :cond_5

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->f:Ljava/lang/String;

    goto :goto_1

    :pswitch_6
    iget-byte v1, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v1, v3, :cond_6

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->g:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_7
    iget-byte v1, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v1, v3, :cond_7

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->h:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_8
    iget-byte v1, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    const/16 v2, 0xa

    if-eq v1, v2, :cond_8

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->o()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->i:J

    invoke-virtual {p0, v5}, Lcom/miui/hybrid/accessory/sdk/a/b;->bCu(Z)V

    goto/16 :goto_1

    :pswitch_9
    iget-byte v1, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v1, v3, :cond_9

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->r()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->j:Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    :pswitch_a
    iget-byte v1, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v1, v3, :cond_a

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->k:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_b
    iget-byte v1, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v1, v4, :cond_b

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_b
    new-instance v0, Lcom/miui/hybrid/accessory/sdk/a/f;

    invoke-direct {v0}, Lcom/miui/hybrid/accessory/sdk/a/f;-><init>()V

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->l:Lcom/miui/hybrid/accessory/sdk/a/f;

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->l:Lcom/miui/hybrid/accessory/sdk/a/f;

    invoke-virtual {v0, p1}, Lcom/miui/hybrid/accessory/sdk/a/f;->bCb(Lcom/miui/hybrid/accessory/a/f/b/c;)V

    goto/16 :goto_1

    :pswitch_c
    iget-byte v1, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v1, v4, :cond_c

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_c
    new-instance v0, Lcom/miui/hybrid/accessory/sdk/a/g;

    invoke-direct {v0}, Lcom/miui/hybrid/accessory/sdk/a/g;-><init>()V

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->m:Lcom/miui/hybrid/accessory/sdk/a/g;

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->m:Lcom/miui/hybrid/accessory/sdk/a/g;

    invoke-virtual {v0, p1}, Lcom/miui/hybrid/accessory/sdk/a/g;->bCb(Lcom/miui/hybrid/accessory/a/f/b/c;)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->b()V

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->o()V

    return-void

    :cond_e
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'minMinaVersionCode\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    nop

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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public bCt(Lcom/miui/hybrid/accessory/sdk/a/b;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->b()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->b()Z

    move-result v1

    if-eqz v0, :cond_3

    :cond_0
    if-nez v0, :cond_7

    :cond_1
    return v4

    :cond_2
    return v4

    :cond_3
    if-nez v1, :cond_0

    :cond_4
    iget v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->b:I

    iget v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->b:I

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->d()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->d()Z

    move-result v1

    if-eqz v0, :cond_9

    :cond_5
    if-nez v0, :cond_d

    :cond_6
    return v4

    :cond_7
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->a:Lcom/miui/hybrid/accessory/sdk/a/a;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->a:Lcom/miui/hybrid/accessory/sdk/a/a;

    invoke-virtual {v0, v1}, Lcom/miui/hybrid/accessory/sdk/a/a;->bCi(Lcom/miui/hybrid/accessory/sdk/a/a;)Z

    move-result v0

    if-nez v0, :cond_4

    return v4

    :cond_8
    return v4

    :cond_9
    if-nez v1, :cond_5

    :cond_a
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->e()Z

    move-result v1

    if-eqz v0, :cond_e

    :cond_b
    if-nez v0, :cond_12

    :cond_c
    return v4

    :cond_d
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    return v4

    :cond_e
    if-nez v1, :cond_b

    :cond_f
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->f()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->f()Z

    move-result v1

    if-eqz v0, :cond_13

    :cond_10
    if-nez v0, :cond_17

    :cond_11
    return v4

    :cond_12
    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return v4

    :cond_13
    if-nez v1, :cond_10

    :cond_14
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->g()Z

    move-result v1

    if-eqz v0, :cond_18

    :cond_15
    if-nez v0, :cond_1c

    :cond_16
    return v4

    :cond_17
    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    return v4

    :cond_18
    if-nez v1, :cond_15

    :cond_19
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->h()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->h()Z

    move-result v1

    if-eqz v0, :cond_1d

    :cond_1a
    if-nez v0, :cond_21

    :cond_1b
    return v4

    :cond_1c
    if-eqz v1, :cond_16

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    return v4

    :cond_1d
    if-nez v1, :cond_1a

    :cond_1e
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->i()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->i()Z

    move-result v1

    if-eqz v0, :cond_22

    :cond_1f
    if-nez v0, :cond_26

    :cond_20
    return v4

    :cond_21
    if-eqz v1, :cond_1b

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    return v4

    :cond_22
    if-nez v1, :cond_1f

    :cond_23
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->j()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->j()Z

    move-result v1

    if-eqz v0, :cond_27

    :cond_24
    if-nez v0, :cond_2b

    :cond_25
    return v4

    :cond_26
    if-eqz v1, :cond_20

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    return v4

    :cond_27
    if-nez v1, :cond_24

    :cond_28
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->k()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->k()Z

    move-result v1

    if-eqz v0, :cond_2c

    :cond_29
    if-nez v0, :cond_30

    :cond_2a
    return v4

    :cond_2b
    if-eqz v1, :cond_25

    iget-wide v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->i:J

    iget-wide v2, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->i:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_28

    return v4

    :cond_2c
    if-nez v1, :cond_29

    :cond_2d
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->l()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->l()Z

    move-result v1

    if-eqz v0, :cond_31

    :cond_2e
    if-nez v0, :cond_35

    :cond_2f
    return v4

    :cond_30
    if-eqz v1, :cond_2a

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->j:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    return v4

    :cond_31
    if-nez v1, :cond_2e

    :cond_32
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->m()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->m()Z

    move-result v1

    if-eqz v0, :cond_36

    :cond_33
    if-nez v0, :cond_3a

    :cond_34
    return v4

    :cond_35
    if-eqz v1, :cond_2f

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    return v4

    :cond_36
    if-nez v1, :cond_33

    :cond_37
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->n()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->n()Z

    move-result v1

    if-eqz v0, :cond_3b

    :cond_38
    if-nez v0, :cond_3d

    :cond_39
    return v4

    :cond_3a
    if-eqz v1, :cond_34

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->l:Lcom/miui/hybrid/accessory/sdk/a/f;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->l:Lcom/miui/hybrid/accessory/sdk/a/f;

    invoke-virtual {v0, v1}, Lcom/miui/hybrid/accessory/sdk/a/f;->bCa(Lcom/miui/hybrid/accessory/sdk/a/f;)Z

    move-result v0

    if-nez v0, :cond_37

    return v4

    :cond_3b
    if-nez v1, :cond_38

    :cond_3c
    return v5

    :cond_3d
    if-eqz v1, :cond_39

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->m:Lcom/miui/hybrid/accessory/sdk/a/g;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->m:Lcom/miui/hybrid/accessory/sdk/a/g;

    invoke-virtual {v0, v1}, Lcom/miui/hybrid/accessory/sdk/a/g;->bCr(Lcom/miui/hybrid/accessory/sdk/a/g;)Z

    move-result v0

    if-nez v0, :cond_3c

    return v4
.end method

.method public bCu(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->C:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public bCv(Lcom/miui/hybrid/accessory/sdk/a/b;)I
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_0
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->c()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_1
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->d()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_2
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->e()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_3
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->f()Z

    move-result v0

    if-nez v0, :cond_17

    :cond_4
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->g()Z

    move-result v0

    if-nez v0, :cond_19

    :cond_5
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->h()Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_6
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->i()Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_7
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->j()Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_8
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->k()Z

    move-result v0

    if-nez v0, :cond_21

    :cond_9
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->l()Z

    move-result v0

    if-nez v0, :cond_23

    :cond_a
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->m()Z

    move-result v0

    if-nez v0, :cond_25

    :cond_b
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->n()Z

    move-result v0

    if-nez v0, :cond_27

    :cond_c
    return v4

    :cond_d
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

    :cond_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->a:Lcom/miui/hybrid/accessory/sdk/a/a;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->a:Lcom/miui/hybrid/accessory/sdk/a/a;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->bDK(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_10
    return v0

    :cond_11
    iget v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->b:I

    iget v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->b:I

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->bDI(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_12
    return v0

    :cond_13
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_14
    return v0

    :cond_15
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_18
    return v0

    :cond_19
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_1a
    return v0

    :cond_1b
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    :cond_1c
    return v0

    :cond_1d
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    :cond_1e
    return v0

    :cond_1f
    iget-wide v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->i:J

    iget-wide v2, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->i:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/hybrid/accessory/a/f/f;->bDJ(JJ)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    :cond_20
    return v0

    :cond_21
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->j:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->j:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->bDK(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    :cond_22
    return v0

    :cond_23
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    :cond_24
    return v0

    :cond_25
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->l:Lcom/miui/hybrid/accessory/sdk/a/f;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->l:Lcom/miui/hybrid/accessory/sdk/a/f;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->bDK(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    :cond_26
    return v0

    :cond_27
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->m:Lcom/miui/hybrid/accessory/sdk/a/g;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/b;->m:Lcom/miui/hybrid/accessory/sdk/a/g;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->bDK(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_c

    return v0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->C:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/hybrid/accessory/sdk/a/b;

    invoke-virtual {p0, p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->bCv(Lcom/miui/hybrid/accessory/sdk/a/b;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/hybrid/accessory/sdk/a/b;

    if-nez v0, :cond_1

    return v1

    :cond_0
    return v1

    :cond_1
    check-cast p1, Lcom/miui/hybrid/accessory/sdk/a/b;

    invoke-virtual {p0, p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->bCt(Lcom/miui/hybrid/accessory/sdk/a/b;)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->C:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->j:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->l:Lcom/miui/hybrid/accessory/sdk/a/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->m:Lcom/miui/hybrid/accessory/sdk/a/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public o()V
    .locals 3

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->a:Lcom/miui/hybrid/accessory/sdk/a/a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'appInfo\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AppQueryResultItem("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "appInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->a:Lcom/miui/hybrid/accessory/sdk/a/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->a:Lcom/miui/hybrid/accessory/sdk/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "minMinaVersionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->d()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->e()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_2
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->f()Z

    move-result v1

    if-nez v1, :cond_5

    :goto_3
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->g()Z

    move-result v1

    if-nez v1, :cond_7

    :goto_4
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->h()Z

    move-result v1

    if-nez v1, :cond_9

    :goto_5
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->i()Z

    move-result v1

    if-nez v1, :cond_b

    :goto_6
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->j()Z

    move-result v1

    if-nez v1, :cond_d

    :goto_7
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->k()Z

    move-result v1

    if-nez v1, :cond_e

    :goto_8
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->l()Z

    move-result v1

    if-nez v1, :cond_10

    :goto_9
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->m()Z

    move-result v1

    if-nez v1, :cond_12

    :goto_a
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/b;->n()Z

    move-result v1

    if-nez v1, :cond_14

    :goto_b
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
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "template:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "icon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->d:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_5
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->e:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_6
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_7
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "description:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->f:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_8
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_9
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->g:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_a
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_b
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "buttonText:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->h:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_c
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_d
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->i:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_e
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "specialData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->j:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->j:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/miui/hybrid/accessory/a/f/f;->bDC(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    goto/16 :goto_8

    :cond_f
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_10
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->k:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_11
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_12
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->l:Lcom/miui/hybrid/accessory/sdk/a/f;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->l:Lcom/miui/hybrid/accessory/sdk/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_13
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_14
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->m:Lcom/miui/hybrid/accessory/sdk/a/g;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/b;->m:Lcom/miui/hybrid/accessory/sdk/a/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :cond_15
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b
.end method
