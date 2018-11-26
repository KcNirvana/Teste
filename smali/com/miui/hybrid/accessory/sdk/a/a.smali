.class public Lcom/miui/hybrid/accessory/sdk/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/miui/hybrid/accessory/a/f/a;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final bfA:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfB:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfC:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfD:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfE:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfF:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfG:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfH:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfI:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfJ:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfK:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfL:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfM:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfh:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfi:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfj:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfk:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfl:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfm:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfn:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfo:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfp:Lcom/miui/hybrid/accessory/a/f/b/i;

.field private static final bfq:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfr:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfs:Lcom/miui/hybrid/accessory/a/f/b/k;

.field public static final bft:Ljava/util/Map;

.field private static final bfu:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfv:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfw:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfx:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfy:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfz:Lcom/miui/hybrid/accessory/a/f/b/k;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:I

.field public D:Ljava/lang/String;

.field public a:J

.field private ak:Ljava/util/BitSet;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Lcom/miui/hybrid/accessory/sdk/a/c;

.field public l:Ljava/util/Set;

.field public m:Ljava/util/Set;

.field public n:J

.field public o:J

.field public p:D

.field public q:J

.field public r:Ljava/lang/String;

.field public s:Ljava/util/Set;

.field public t:Ljava/util/Set;

.field public u:Ljava/util/Set;

.field public v:Ljava/lang/String;

.field public w:Ljava/util/List;

.field public x:Ljava/util/List;

.field public y:J

.field public z:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v10, 0xe

    const/16 v9, 0xa

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/16 v7, 0xb

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/i;

    const-string/jumbo v1, "AppInfo"

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfp:Lcom/miui/hybrid/accessory/a/f/b/i;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "appId"

    invoke-direct {v0, v1, v9, v6}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfn:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "appName"

    invoke-direct {v0, v1, v7, v8}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfI:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "appSecret"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfA:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "appKey"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v9, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfm:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "appVersionCode"

    const/16 v2, 0x8

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfF:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "sdkVersionCode"

    const/16 v2, 0x8

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfv:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "packageName"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfl:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "icon"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfz:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "description"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfu:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "downloadUrl"

    invoke-direct {v0, v1, v7, v9}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfD:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "status"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v7}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfC:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "categories"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v10, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfi:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "keywords"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v10, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfM:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "createTime"

    invoke-direct {v0, v1, v9, v10}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfs:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "lastUpdateTime"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v9, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfo:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "popularity"

    const/4 v2, 0x4

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfJ:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "developerId"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v9, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfh:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "company"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v7, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfB:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "models"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v10, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfE:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "locales"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v10, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfw:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "regions"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v10, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfG:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "defaultPageName"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v7, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfj:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "pages"

    const/16 v2, 0xf

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfx:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "nativePackageNames"

    const/16 v2, 0xf

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfK:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "size"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v9, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfr:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "domains"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v10, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfq:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "changeLog"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v7, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfL:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "introduction"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v7, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfy:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "minMinaVersionCode"

    const/16 v2, 0x8

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfk:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "appVersionName"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v7, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bfH:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beS:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v9}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "appId"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beB:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v7}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "appName"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beC:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v7}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "appSecret"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beD:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v9}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "appKey"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beE:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "appVersionCode"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beN:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "sdkVersionCode"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beO:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v7}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "packageName"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beP:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v7}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "icon"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beQ:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v7}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "description"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beF:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v7}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "downloadUrl"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beG:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/a;

    const/16 v4, 0x10

    const-class v5, Lcom/miui/hybrid/accessory/sdk/a/c;

    invoke-direct {v3, v4, v5}, Lcom/miui/hybrid/accessory/a/f/a/a;-><init>(BLjava/lang/Class;)V

    const-string/jumbo v4, "status"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beH:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/f;

    new-instance v4, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v4, v7}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    invoke-direct {v3, v10, v4}, Lcom/miui/hybrid/accessory/a/f/a/f;-><init>(BLcom/miui/hybrid/accessory/a/f/a/c;)V

    const-string/jumbo v4, "categories"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beI:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/f;

    new-instance v4, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v4, v7}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    invoke-direct {v3, v10, v4}, Lcom/miui/hybrid/accessory/a/f/a/f;-><init>(BLcom/miui/hybrid/accessory/a/f/a/c;)V

    const-string/jumbo v4, "keywords"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beT:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v9}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "createTime"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beU:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v9}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "lastUpdateTime"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beW:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "popularity"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beV:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v9}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "developerId"

    invoke-direct {v2, v4, v8, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beY:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v7}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "company"

    invoke-direct {v2, v4, v8, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->bfb:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/f;

    new-instance v4, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v4, v7}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    invoke-direct {v3, v10, v4}, Lcom/miui/hybrid/accessory/a/f/a/f;-><init>(BLcom/miui/hybrid/accessory/a/f/a/c;)V

    const-string/jumbo v4, "models"

    invoke-direct {v2, v4, v8, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->bfd:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/f;

    new-instance v4, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v4, v7}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    invoke-direct {v3, v10, v4}, Lcom/miui/hybrid/accessory/a/f/a/f;-><init>(BLcom/miui/hybrid/accessory/a/f/a/c;)V

    const-string/jumbo v4, "locales"

    invoke-direct {v2, v4, v8, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->bfc:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/f;

    new-instance v4, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v4, v7}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    invoke-direct {v3, v10, v4}, Lcom/miui/hybrid/accessory/a/f/a/f;-><init>(BLcom/miui/hybrid/accessory/a/f/a/c;)V

    const-string/jumbo v4, "regions"

    invoke-direct {v2, v4, v8, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beZ:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v7}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "defaultPageName"

    invoke-direct {v2, v4, v8, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->bfe:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/d;

    new-instance v4, Lcom/miui/hybrid/accessory/a/f/a/g;

    const/16 v5, 0xc

    const-class v6, Lcom/miui/hybrid/accessory/sdk/a/e;

    invoke-direct {v4, v5, v6}, Lcom/miui/hybrid/accessory/a/f/a/g;-><init>(BLjava/lang/Class;)V

    const/16 v5, 0xf

    invoke-direct {v3, v5, v4}, Lcom/miui/hybrid/accessory/a/f/a/d;-><init>(BLcom/miui/hybrid/accessory/a/f/a/c;)V

    const-string/jumbo v4, "pages"

    invoke-direct {v2, v4, v8, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->bfg:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/d;

    new-instance v4, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v4, v7}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const/16 v5, 0xf

    invoke-direct {v3, v5, v4}, Lcom/miui/hybrid/accessory/a/f/a/d;-><init>(BLcom/miui/hybrid/accessory/a/f/a/c;)V

    const-string/jumbo v4, "nativePackageNames"

    invoke-direct {v2, v4, v8, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->bff:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v9}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "size"

    invoke-direct {v2, v4, v8, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->bfa:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/f;

    new-instance v4, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v4, v7}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    invoke-direct {v3, v10, v4}, Lcom/miui/hybrid/accessory/a/f/a/f;-><init>(BLcom/miui/hybrid/accessory/a/f/a/c;)V

    const-string/jumbo v4, "domains"

    invoke-direct {v2, v4, v8, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beR:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v7}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "changeLog"

    invoke-direct {v2, v4, v8, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beJ:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v7}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "introduction"

    invoke-direct {v2, v4, v8, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beL:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "minMinaVersionCode"

    invoke-direct {v2, v4, v8, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->beK:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v7}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "appVersionName"

    invoke-direct {v2, v4, v8, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bft:Ljava/util/Map;

    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/a;->bft:Ljava/util/Map;

    const-class v1, Lcom/miui/hybrid/accessory/sdk/a/a;

    invoke-static {v1, v0}, Lcom/miui/hybrid/accessory/a/f/a/b;->bDq(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->ak:Ljava/util/BitSet;

    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/c;->bgA:Lcom/miui/hybrid/accessory/sdk/a/c;

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->k:Lcom/miui/hybrid/accessory/sdk/a/c;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->p:D

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->x:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public B()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->y:J

    return-wide v0
.end method

.method public C()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->ak:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public D()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->z:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public E()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->A:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public F()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->B:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public G()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->ak:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public H()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->D:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public I()V
    .locals 3

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->j:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->k:Lcom/miui/hybrid/accessory/sdk/a/c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->l:Ljava/util/Set;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->m:Ljava/util/Set;

    if-eqz v0, :cond_8

    return-void

    :cond_0
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'appName\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->toString()Ljava/lang/String;

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

    const-string/jumbo v2, "Required field \'appSecret\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->toString()Ljava/lang/String;

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

    const-string/jumbo v2, "Required field \'packageName\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'icon\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'description\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'downloadUrl\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'status\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'categories\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'keywords\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->ak:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->ak:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public bCb(Lcom/miui/hybrid/accessory/a/f/b/c;)V
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x1

    const/16 v5, 0xb

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->a()Lcom/miui/hybrid/accessory/a/f/b/i;

    :goto_0
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->c()Lcom/miui/hybrid/accessory/a/f/b/k;

    move-result-object v0

    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eqz v2, :cond_26

    iget-short v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->bhN:S

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->d()V

    goto :goto_0

    :pswitch_1
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v2, v7, :cond_0

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->o()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->a:J

    invoke-virtual {p0, v6}, Lcom/miui/hybrid/accessory/sdk/a/a;->a(Z)V

    goto :goto_1

    :pswitch_2
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v2, v5, :cond_1

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->b:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v2, v5, :cond_2

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->c:Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v2, v7, :cond_3

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->o()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->d:J

    invoke-virtual {p0, v6}, Lcom/miui/hybrid/accessory/sdk/a/a;->bCg(Z)V

    goto :goto_1

    :pswitch_5
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->n()I

    move-result v0

    iput v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->e:I

    invoke-virtual {p0, v6}, Lcom/miui/hybrid/accessory/sdk/a/a;->bCh(Z)V

    goto :goto_1

    :pswitch_6
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->n()I

    move-result v0

    iput v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->f:I

    invoke-virtual {p0, v6}, Lcom/miui/hybrid/accessory/sdk/a/a;->bCm(Z)V

    goto :goto_1

    :pswitch_7
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v2, v5, :cond_6

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->g:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_8
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v2, v5, :cond_7

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->h:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_9
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v2, v5, :cond_8

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->i:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_a
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v2, v5, :cond_9

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->j:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_b
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    const/16 v3, 0x8

    if-eq v2, v3, :cond_a

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->n()I

    move-result v0

    invoke-static {v0}, Lcom/miui/hybrid/accessory/sdk/a/c;->a(I)Lcom/miui/hybrid/accessory/sdk/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->k:Lcom/miui/hybrid/accessory/sdk/a/c;

    goto/16 :goto_1

    :pswitch_c
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    const/16 v3, 0xe

    if-eq v2, v3, :cond_b

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->i()Lcom/miui/hybrid/accessory/a/f/b/d;

    move-result-object v2

    new-instance v0, Ljava/util/HashSet;

    iget v3, v2, Lcom/miui/hybrid/accessory/a/f/b/d;->b:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->l:Ljava/util/Set;

    move v0, v1

    :goto_2
    iget v3, v2, Lcom/miui/hybrid/accessory/a/f/b/d;->b:I

    if-lt v0, v3, :cond_c

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->j()V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->l:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_d
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    const/16 v3, 0xe

    if-eq v2, v3, :cond_d

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->i()Lcom/miui/hybrid/accessory/a/f/b/d;

    move-result-object v2

    new-instance v0, Ljava/util/HashSet;

    iget v3, v2, Lcom/miui/hybrid/accessory/a/f/b/d;->b:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->m:Ljava/util/Set;

    move v0, v1

    :goto_3
    iget v3, v2, Lcom/miui/hybrid/accessory/a/f/b/d;->b:I

    if-lt v0, v3, :cond_e

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->j()V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->m:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_e
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v2, v7, :cond_f

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_f
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->o()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->n:J

    invoke-virtual {p0, v6}, Lcom/miui/hybrid/accessory/sdk/a/a;->bCd(Z)V

    goto/16 :goto_1

    :pswitch_f
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v2, v7, :cond_10

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_10
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->o()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->o:J

    invoke-virtual {p0, v6}, Lcom/miui/hybrid/accessory/sdk/a/a;->bCe(Z)V

    goto/16 :goto_1

    :pswitch_10
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    const/4 v3, 0x4

    if-eq v2, v3, :cond_11

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_11
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->p()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->p:D

    invoke-virtual {p0, v6}, Lcom/miui/hybrid/accessory/sdk/a/a;->bCf(Z)V

    goto/16 :goto_1

    :pswitch_11
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v2, v7, :cond_12

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_12
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->o()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->q:J

    invoke-virtual {p0, v6}, Lcom/miui/hybrid/accessory/sdk/a/a;->bCj(Z)V

    goto/16 :goto_1

    :pswitch_12
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v2, v5, :cond_13

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_13
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->r:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_13
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    const/16 v3, 0xe

    if-eq v2, v3, :cond_14

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_14
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->i()Lcom/miui/hybrid/accessory/a/f/b/d;

    move-result-object v2

    new-instance v0, Ljava/util/HashSet;

    iget v3, v2, Lcom/miui/hybrid/accessory/a/f/b/d;->b:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->s:Ljava/util/Set;

    move v0, v1

    :goto_4
    iget v3, v2, Lcom/miui/hybrid/accessory/a/f/b/d;->b:I

    if-lt v0, v3, :cond_15

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->j()V

    goto/16 :goto_1

    :cond_15
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->s:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :pswitch_14
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    const/16 v3, 0xe

    if-eq v2, v3, :cond_16

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_16
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->i()Lcom/miui/hybrid/accessory/a/f/b/d;

    move-result-object v2

    new-instance v0, Ljava/util/HashSet;

    iget v3, v2, Lcom/miui/hybrid/accessory/a/f/b/d;->b:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->t:Ljava/util/Set;

    move v0, v1

    :goto_5
    iget v3, v2, Lcom/miui/hybrid/accessory/a/f/b/d;->b:I

    if-lt v0, v3, :cond_17

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->j()V

    goto/16 :goto_1

    :cond_17
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->t:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :pswitch_15
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    const/16 v3, 0xe

    if-eq v2, v3, :cond_18

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_18
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->i()Lcom/miui/hybrid/accessory/a/f/b/d;

    move-result-object v2

    new-instance v0, Ljava/util/HashSet;

    iget v3, v2, Lcom/miui/hybrid/accessory/a/f/b/d;->b:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->u:Ljava/util/Set;

    move v0, v1

    :goto_6
    iget v3, v2, Lcom/miui/hybrid/accessory/a/f/b/d;->b:I

    if-lt v0, v3, :cond_19

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->j()V

    goto/16 :goto_1

    :cond_19
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->u:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :pswitch_16
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v2, v5, :cond_1a

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_1a
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->v:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_17
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    const/16 v3, 0xf

    if-eq v2, v3, :cond_1b

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_1b
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->g()Lcom/miui/hybrid/accessory/a/f/b/e;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lcom/miui/hybrid/accessory/a/f/b/e;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->w:Ljava/util/List;

    move v0, v1

    :goto_7
    iget v3, v2, Lcom/miui/hybrid/accessory/a/f/b/e;->b:I

    if-lt v0, v3, :cond_1c

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->h()V

    goto/16 :goto_1

    :cond_1c
    new-instance v3, Lcom/miui/hybrid/accessory/sdk/a/e;

    invoke-direct {v3}, Lcom/miui/hybrid/accessory/sdk/a/e;-><init>()V

    invoke-virtual {v3, p1}, Lcom/miui/hybrid/accessory/sdk/a/e;->bCb(Lcom/miui/hybrid/accessory/a/f/b/c;)V

    iget-object v4, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->w:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :pswitch_18
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    const/16 v3, 0xf

    if-eq v2, v3, :cond_1d

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_1d
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->g()Lcom/miui/hybrid/accessory/a/f/b/e;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lcom/miui/hybrid/accessory/a/f/b/e;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->x:Ljava/util/List;

    move v0, v1

    :goto_8
    iget v3, v2, Lcom/miui/hybrid/accessory/a/f/b/e;->b:I

    if-lt v0, v3, :cond_1e

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->h()V

    goto/16 :goto_1

    :cond_1e
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->x:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :pswitch_19
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v2, v7, :cond_1f

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_1f
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->o()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->y:J

    invoke-virtual {p0, v6}, Lcom/miui/hybrid/accessory/sdk/a/a;->bCk(Z)V

    goto/16 :goto_1

    :pswitch_1a
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    const/16 v3, 0xe

    if-eq v2, v3, :cond_20

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_20
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->i()Lcom/miui/hybrid/accessory/a/f/b/d;

    move-result-object v2

    new-instance v0, Ljava/util/HashSet;

    iget v3, v2, Lcom/miui/hybrid/accessory/a/f/b/d;->b:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->z:Ljava/util/Set;

    move v0, v1

    :goto_9
    iget v3, v2, Lcom/miui/hybrid/accessory/a/f/b/d;->b:I

    if-lt v0, v3, :cond_21

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->j()V

    goto/16 :goto_1

    :cond_21
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->z:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :pswitch_1b
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v2, v5, :cond_22

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_22
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->A:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_1c
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v2, v5, :cond_23

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_23
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->B:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_1d
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    const/16 v3, 0x8

    if-eq v2, v3, :cond_24

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_24
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->n()I

    move-result v0

    iput v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->C:I

    invoke-virtual {p0, v6}, Lcom/miui/hybrid/accessory/sdk/a/a;->bCc(Z)V

    goto/16 :goto_1

    :pswitch_1e
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eq v2, v5, :cond_25

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto/16 :goto_1

    :cond_25
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->D:Ljava/lang/String;

    goto/16 :goto_1

    :cond_26
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->b()V

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->q()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->r()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->s()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->I()V

    return-void

    :cond_27
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'appId\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'appKey\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'appVersionCode\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'sdkVersionCode\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'createTime\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'lastUpdateTime\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'popularity\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->toString()Ljava/lang/String;

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
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_1e
    .end packed-switch
.end method

.method public bCc(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->ak:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public bCd(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->ak:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public bCe(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->ak:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public bCf(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->ak:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public bCg(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->ak:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public bCh(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->ak:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public bCi(Lcom/miui/hybrid/accessory/sdk/a/a;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->a:J

    iget-wide v2, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    return v4

    :cond_0
    return v4

    :cond_1
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->c()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->c()Z

    move-result v1

    if-eqz v0, :cond_4

    :cond_2
    if-nez v0, :cond_8

    :cond_3
    return v4

    :cond_4
    if-nez v1, :cond_2

    :cond_5
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->d()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->d()Z

    move-result v1

    if-eqz v0, :cond_9

    :cond_6
    if-nez v0, :cond_b

    :cond_7
    return v4

    :cond_8
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v4

    :cond_9
    if-nez v1, :cond_6

    :cond_a
    iget-wide v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->d:J

    iget-wide v2, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    return v4

    :cond_b
    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    return v4

    :cond_c
    iget v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->e:I

    iget v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->e:I

    if-ne v0, v1, :cond_f

    iget v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->f:I

    iget v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->f:I

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->i()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->i()Z

    move-result v1

    if-eqz v0, :cond_11

    :cond_d
    if-nez v0, :cond_15

    :cond_e
    return v4

    :cond_f
    return v4

    :cond_10
    return v4

    :cond_11
    if-nez v1, :cond_d

    :cond_12
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->k()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->k()Z

    move-result v1

    if-eqz v0, :cond_16

    :cond_13
    if-nez v0, :cond_1a

    :cond_14
    return v4

    :cond_15
    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    return v4

    :cond_16
    if-nez v1, :cond_13

    :cond_17
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->l()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->l()Z

    move-result v1

    if-eqz v0, :cond_1b

    :cond_18
    if-nez v0, :cond_1f

    :cond_19
    return v4

    :cond_1a
    if-eqz v1, :cond_14

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    return v4

    :cond_1b
    if-nez v1, :cond_18

    :cond_1c
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->m()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->m()Z

    move-result v1

    if-eqz v0, :cond_20

    :cond_1d
    if-nez v0, :cond_24

    :cond_1e
    return v4

    :cond_1f
    if-eqz v1, :cond_19

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->i:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    return v4

    :cond_20
    if-nez v1, :cond_1d

    :cond_21
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->n()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->n()Z

    move-result v1

    if-eqz v0, :cond_25

    :cond_22
    if-nez v0, :cond_29

    :cond_23
    return v4

    :cond_24
    if-eqz v1, :cond_1e

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->j:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    return v4

    :cond_25
    if-nez v1, :cond_22

    :cond_26
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->o()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->o()Z

    move-result v1

    if-eqz v0, :cond_2a

    :cond_27
    if-nez v0, :cond_2e

    :cond_28
    return v4

    :cond_29
    if-eqz v1, :cond_23

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->k:Lcom/miui/hybrid/accessory/sdk/a/c;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->k:Lcom/miui/hybrid/accessory/sdk/a/c;

    invoke-virtual {v0, v1}, Lcom/miui/hybrid/accessory/sdk/a/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    return v4

    :cond_2a
    if-nez v1, :cond_27

    :cond_2b
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->p()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->p()Z

    move-result v1

    if-eqz v0, :cond_2f

    :cond_2c
    if-nez v0, :cond_31

    :cond_2d
    return v4

    :cond_2e
    if-eqz v1, :cond_28

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->l:Ljava/util/Set;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->l:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    return v4

    :cond_2f
    if-nez v1, :cond_2c

    :cond_30
    iget-wide v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->n:J

    iget-wide v2, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->n:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_32

    return v4

    :cond_31
    if-eqz v1, :cond_2d

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->m:Ljava/util/Set;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->m:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    return v4

    :cond_32
    iget-wide v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->o:J

    iget-wide v2, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->o:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_33

    return v4

    :cond_33
    iget-wide v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->p:D

    iget-wide v2, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->p:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_34

    return v4

    :cond_34
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->t()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->t()Z

    move-result v1

    if-eqz v0, :cond_37

    :cond_35
    if-nez v0, :cond_3b

    :cond_36
    return v4

    :cond_37
    if-nez v1, :cond_35

    :cond_38
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->u()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->u()Z

    move-result v1

    if-eqz v0, :cond_3c

    :cond_39
    if-nez v0, :cond_40

    :cond_3a
    return v4

    :cond_3b
    if-eqz v1, :cond_36

    iget-wide v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->q:J

    iget-wide v2, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->q:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_38

    return v4

    :cond_3c
    if-nez v1, :cond_39

    :cond_3d
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->v()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->v()Z

    move-result v1

    if-eqz v0, :cond_41

    :cond_3e
    if-nez v0, :cond_45

    :cond_3f
    return v4

    :cond_40
    if-eqz v1, :cond_3a

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->r:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    return v4

    :cond_41
    if-nez v1, :cond_3e

    :cond_42
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->w()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->w()Z

    move-result v1

    if-eqz v0, :cond_46

    :cond_43
    if-nez v0, :cond_4a

    :cond_44
    return v4

    :cond_45
    if-eqz v1, :cond_3f

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->s:Ljava/util/Set;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->s:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    return v4

    :cond_46
    if-nez v1, :cond_43

    :cond_47
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->x()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->x()Z

    move-result v1

    if-eqz v0, :cond_4b

    :cond_48
    if-nez v0, :cond_4f

    :cond_49
    return v4

    :cond_4a
    if-eqz v1, :cond_44

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->t:Ljava/util/Set;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->t:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    return v4

    :cond_4b
    if-nez v1, :cond_48

    :cond_4c
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->y()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->y()Z

    move-result v1

    if-eqz v0, :cond_50

    :cond_4d
    if-nez v0, :cond_54

    :cond_4e
    return v4

    :cond_4f
    if-eqz v1, :cond_49

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->u:Ljava/util/Set;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->u:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    return v4

    :cond_50
    if-nez v1, :cond_4d

    :cond_51
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->z()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->z()Z

    move-result v1

    if-eqz v0, :cond_55

    :cond_52
    if-nez v0, :cond_59

    :cond_53
    return v4

    :cond_54
    if-eqz v1, :cond_4e

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->v:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    return v4

    :cond_55
    if-nez v1, :cond_52

    :cond_56
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->A()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->A()Z

    move-result v1

    if-eqz v0, :cond_5a

    :cond_57
    if-nez v0, :cond_5e

    :cond_58
    return v4

    :cond_59
    if-eqz v1, :cond_53

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->w:Ljava/util/List;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->w:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    return v4

    :cond_5a
    if-nez v1, :cond_57

    :cond_5b
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->C()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->C()Z

    move-result v1

    if-eqz v0, :cond_5f

    :cond_5c
    if-nez v0, :cond_63

    :cond_5d
    return v4

    :cond_5e
    if-eqz v1, :cond_58

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->x:Ljava/util/List;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    return v4

    :cond_5f
    if-nez v1, :cond_5c

    :cond_60
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->D()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->D()Z

    move-result v1

    if-eqz v0, :cond_64

    :cond_61
    if-nez v0, :cond_68

    :cond_62
    return v4

    :cond_63
    if-eqz v1, :cond_5d

    iget-wide v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->y:J

    iget-wide v2, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->y:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_60

    return v4

    :cond_64
    if-nez v1, :cond_61

    :cond_65
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->E()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->E()Z

    move-result v1

    if-eqz v0, :cond_69

    :cond_66
    if-nez v0, :cond_6d

    :cond_67
    return v4

    :cond_68
    if-eqz v1, :cond_62

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->z:Ljava/util/Set;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->z:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    return v4

    :cond_69
    if-nez v1, :cond_66

    :cond_6a
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->F()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->F()Z

    move-result v1

    if-eqz v0, :cond_6e

    :cond_6b
    if-nez v0, :cond_72

    :cond_6c
    return v4

    :cond_6d
    if-eqz v1, :cond_67

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->A:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    return v4

    :cond_6e
    if-nez v1, :cond_6b

    :cond_6f
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->G()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->G()Z

    move-result v1

    if-eqz v0, :cond_73

    :cond_70
    if-nez v0, :cond_77

    :cond_71
    return v4

    :cond_72
    if-eqz v1, :cond_6c

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->B:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    return v4

    :cond_73
    if-nez v1, :cond_70

    :cond_74
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->H()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->H()Z

    move-result v1

    if-eqz v0, :cond_78

    :cond_75
    if-nez v0, :cond_7a

    :cond_76
    return v4

    :cond_77
    if-eqz v1, :cond_71

    iget v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->C:I

    iget v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->C:I

    if-eq v0, v1, :cond_74

    return v4

    :cond_78
    if-nez v1, :cond_75

    :cond_79
    return v5

    :cond_7a
    if-eqz v1, :cond_76

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->D:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    return v4
.end method

.method public bCj(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->ak:Ljava/util/BitSet;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public bCk(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->ak:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public bCl(Lcom/miui/hybrid/accessory/sdk/a/a;)I
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_20

    :cond_0
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_22

    :cond_1
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_24

    :cond_2
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->e()Z

    move-result v0

    if-nez v0, :cond_26

    :cond_3
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->f()Z

    move-result v0

    if-nez v0, :cond_28

    :cond_4
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->g()Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_5
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->i()Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_6
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->k()Z

    move-result v0

    if-nez v0, :cond_2e

    :cond_7
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->l()Z

    move-result v0

    if-nez v0, :cond_30

    :cond_8
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->m()Z

    move-result v0

    if-nez v0, :cond_32

    :cond_9
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->n()Z

    move-result v0

    if-nez v0, :cond_34

    :cond_a
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->o()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->o()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->o()Z

    move-result v0

    if-nez v0, :cond_36

    :cond_b
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->p()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->p()Z

    move-result v0

    if-nez v0, :cond_38

    :cond_c
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->q()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->q()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_39

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->q()Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_d
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->r()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->r()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->r()Z

    move-result v0

    if-nez v0, :cond_3c

    :cond_e
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->s()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->s()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->s()Z

    move-result v0

    if-nez v0, :cond_3e

    :cond_f
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->t()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->t()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->t()Z

    move-result v0

    if-nez v0, :cond_40

    :cond_10
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->u()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->u()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->u()Z

    move-result v0

    if-nez v0, :cond_42

    :cond_11
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->v()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->v()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_43

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->v()Z

    move-result v0

    if-nez v0, :cond_44

    :cond_12
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->w()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->w()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->w()Z

    move-result v0

    if-nez v0, :cond_46

    :cond_13
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->x()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->x()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->x()Z

    move-result v0

    if-nez v0, :cond_48

    :cond_14
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->y()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->y()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_49

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->y()Z

    move-result v0

    if-nez v0, :cond_4a

    :cond_15
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->z()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->z()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_4b

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->z()Z

    move-result v0

    if-nez v0, :cond_4c

    :cond_16
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->A()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->A()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_4d

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->A()Z

    move-result v0

    if-nez v0, :cond_4e

    :cond_17
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->C()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->C()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->C()Z

    move-result v0

    if-nez v0, :cond_50

    :cond_18
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->D()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->D()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_51

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->D()Z

    move-result v0

    if-nez v0, :cond_52

    :cond_19
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->E()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->E()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_53

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->E()Z

    move-result v0

    if-nez v0, :cond_54

    :cond_1a
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->F()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->F()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_55

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->F()Z

    move-result v0

    if-nez v0, :cond_56

    :cond_1b
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->G()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->G()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_57

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->G()Z

    move-result v0

    if-nez v0, :cond_58

    :cond_1c
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->H()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->H()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_59

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->H()Z

    move-result v0

    if-nez v0, :cond_5a

    :cond_1d
    return v4

    :cond_1e
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

    :cond_1f
    return v0

    :cond_20
    iget-wide v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->a:J

    iget-wide v2, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/hybrid/accessory/a/f/f;->bDJ(JJ)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_21
    return v0

    :cond_22
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_23
    return v0

    :cond_24
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_25
    return v0

    :cond_26
    iget-wide v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->d:J

    iget-wide v2, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/hybrid/accessory/a/f/f;->bDJ(JJ)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_27
    return v0

    :cond_28
    iget v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->e:I

    iget v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->e:I

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->bDI(II)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_29
    return v0

    :cond_2a
    iget v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->f:I

    iget v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->f:I

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->bDI(II)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_2b
    return v0

    :cond_2c
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    :cond_2d
    return v0

    :cond_2e
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    :cond_2f
    return v0

    :cond_30
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->i:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    :cond_31
    return v0

    :cond_32
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->j:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    :cond_33
    return v0

    :cond_34
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->k:Lcom/miui/hybrid/accessory/sdk/a/c;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->k:Lcom/miui/hybrid/accessory/sdk/a/c;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->bDK(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    :cond_35
    return v0

    :cond_36
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->l:Ljava/util/Set;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->l:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->bDF(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    :cond_37
    return v0

    :cond_38
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->m:Ljava/util/Set;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->m:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->bDF(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    :cond_39
    return v0

    :cond_3a
    iget-wide v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->n:J

    iget-wide v2, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->n:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/hybrid/accessory/a/f/f;->bDJ(JJ)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    :cond_3b
    return v0

    :cond_3c
    iget-wide v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->o:J

    iget-wide v2, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->o:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/hybrid/accessory/a/f/f;->bDJ(JJ)I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    :cond_3d
    return v0

    :cond_3e
    iget-wide v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->p:D

    iget-wide v2, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->p:D

    invoke-static {v0, v1, v2, v3}, Lcom/miui/hybrid/accessory/a/f/f;->bDL(DD)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    :cond_3f
    return v0

    :cond_40
    iget-wide v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->q:J

    iget-wide v2, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->q:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/hybrid/accessory/a/f/f;->bDJ(JJ)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    :cond_41
    return v0

    :cond_42
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->r:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_11

    return v0

    :cond_43
    return v0

    :cond_44
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->s:Ljava/util/Set;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->s:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->bDF(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    if-eqz v0, :cond_12

    return v0

    :cond_45
    return v0

    :cond_46
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->t:Ljava/util/Set;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->t:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->bDF(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    :cond_47
    return v0

    :cond_48
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->u:Ljava/util/Set;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->u:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->bDF(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    :cond_49
    return v0

    :cond_4a
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->v:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15

    return v0

    :cond_4b
    return v0

    :cond_4c
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->w:Ljava/util/List;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->w:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->bDH(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    :cond_4d
    return v0

    :cond_4e
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->x:Ljava/util/List;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->x:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->bDH(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_17

    return v0

    :cond_4f
    return v0

    :cond_50
    iget-wide v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->y:J

    iget-wide v2, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->y:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/hybrid/accessory/a/f/f;->bDJ(JJ)I

    move-result v0

    if-eqz v0, :cond_18

    return v0

    :cond_51
    return v0

    :cond_52
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->z:Ljava/util/Set;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->z:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->bDF(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    if-eqz v0, :cond_19

    return v0

    :cond_53
    return v0

    :cond_54
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->A:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->A:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1a

    return v0

    :cond_55
    return v0

    :cond_56
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->B:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->B:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1b

    return v0

    :cond_57
    return v0

    :cond_58
    iget v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->C:I

    iget v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->C:I

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->bDI(II)I

    move-result v0

    if-eqz v0, :cond_1c

    return v0

    :cond_59
    return v0

    :cond_5a
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->D:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/a;->D:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1d

    return v0
.end method

.method public bCm(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->ak:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->b:Ljava/lang/String;

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

    check-cast p1, Lcom/miui/hybrid/accessory/sdk/a/a;

    invoke-virtual {p0, p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->bCl(Lcom/miui/hybrid/accessory/sdk/a/a;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->ak:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/hybrid/accessory/sdk/a/a;

    if-nez v0, :cond_1

    return v1

    :cond_0
    return v1

    :cond_1
    check-cast p1, Lcom/miui/hybrid/accessory/sdk/a/a;

    invoke-virtual {p0, p1}, Lcom/miui/hybrid/accessory/sdk/a/a;->bCi(Lcom/miui/hybrid/accessory/sdk/a/a;)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->ak:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->ak:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->h:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->i:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->j:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->k:Lcom/miui/hybrid/accessory/sdk/a/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->l:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->m:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public q()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->ak:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->ak:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->ak:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->ak:Ljava/util/BitSet;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AppInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "appName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "appSecret:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "appKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "appVersionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sdkVersionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "icon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->h:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "description:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->i:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "downloadUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->j:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->k:Lcom/miui/hybrid/accessory/sdk/a/c;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->k:Lcom/miui/hybrid/accessory/sdk/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_6
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "categories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->l:Ljava/util/Set;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->l:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_7
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "keywords:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->m:Ljava/util/Set;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->m:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_8
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "createTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->n:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "lastUpdateTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->o:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "popularity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->p:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->t()Z

    move-result v1

    if-nez v1, :cond_9

    :goto_9
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->u()Z

    move-result v1

    if-nez v1, :cond_a

    :goto_a
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->v()Z

    move-result v1

    if-nez v1, :cond_c

    :goto_b
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->w()Z

    move-result v1

    if-nez v1, :cond_e

    :goto_c
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->x()Z

    move-result v1

    if-nez v1, :cond_10

    :goto_d
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->y()Z

    move-result v1

    if-nez v1, :cond_12

    :goto_e
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->z()Z

    move-result v1

    if-nez v1, :cond_14

    :goto_f
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->A()Z

    move-result v1

    if-nez v1, :cond_16

    :goto_10
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->C()Z

    move-result v1

    if-nez v1, :cond_18

    :goto_11
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->D()Z

    move-result v1

    if-nez v1, :cond_19

    :goto_12
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->E()Z

    move-result v1

    if-nez v1, :cond_1b

    :goto_13
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->F()Z

    move-result v1

    if-nez v1, :cond_1d

    :goto_14
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->G()Z

    move-result v1

    if-nez v1, :cond_1f

    :goto_15
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/a;->H()Z

    move-result v1

    if-nez v1, :cond_20

    :goto_16
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_3
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_4
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_5
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_6
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_7
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_8
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_9
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "developerId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->q:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_a
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "company:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->r:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_b
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_c
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "models:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->s:Ljava/util/Set;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->s:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :cond_d
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :cond_e
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "locales:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->t:Ljava/util/Set;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->t:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :cond_f
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :cond_10
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "regions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->u:Ljava/util/Set;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->u:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_11
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_12
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "defaultPageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->v:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    :cond_13
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    :cond_14
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pages:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->w:Ljava/util/List;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->w:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    :cond_15
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    :cond_16
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "nativePackageNames:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->x:Ljava/util/List;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->x:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    :cond_17
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    :cond_18
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->y:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    :cond_19
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "domains:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->z:Ljava/util/Set;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->z:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    :cond_1a
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    :cond_1b
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "changeLog:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->A:Ljava/lang/String;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_13

    :cond_1c
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_13

    :cond_1d
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "introduction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->B:Ljava/lang/String;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_14

    :cond_1e
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_14

    :cond_1f
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "minMinaVersionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_15

    :cond_20
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "appVersionName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->D:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_16

    :cond_21
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_16
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public v()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->s:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public w()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->t:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public x()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->u:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->v:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public z()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a;->w:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
