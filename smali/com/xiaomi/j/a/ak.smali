.class public Lcom/xiaomi/j/a/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/a;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/j/a/ak$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/a/a",
        "<",
        "Lcom/xiaomi/j/a/ak;",
        "Lcom/xiaomi/j/a/ak$a;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final A:Lb/a/a/b/b;

.field private static final B:Lb/a/a/b/b;

.field private static final C:Lb/a/a/b/b;

.field private static final D:Lb/a/a/b/b;

.field private static final E:Lb/a/a/b/b;

.field private static final F:Lb/a/a/b/b;

.field private static final G:Lb/a/a/b/b;

.field private static final H:Lb/a/a/b/b;

.field private static final I:Lb/a/a/b/b;

.field private static final J:Lb/a/a/b/b;

.field private static final K:Lb/a/a/b/b;

.field private static final L:Lb/a/a/b/b;

.field private static final M:Lb/a/a/b/b;

.field private static final N:Lb/a/a/b/b;

.field private static final O:Lb/a/a/b/b;

.field private static final P:Lb/a/a/b/b;

.field private static final Q:Lb/a/a/b/b;

.field private static final R:Lb/a/a/b/b;

.field private static final S:Lb/a/a/b/b;

.field private static final T:Lb/a/a/b/b;

.field private static final U:Lb/a/a/b/b;

.field private static final V:Lb/a/a/b/b;

.field public static final x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/j/a/ak$a;",
            "Lb/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final y:Lb/a/a/b/j;

.field private static final z:Lb/a/a/b/b;


# instance fields
.field private W:Ljava/util/BitSet;

.field public a:Ljava/lang/String;

.field public b:Lcom/xiaomi/j/a/y;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:I

.field public t:Lcom/xiaomi/j/a/x;

.field public u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public v:Z

.field public w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v10, 0xc

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v9, 0x2

    const/16 v8, 0xb

    new-instance v0, Lb/a/a/b/j;

    const-string v1, "XmPushActionRegistration"

    invoke-direct {v0, v1}, Lb/a/a/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->y:Lb/a/a/b/j;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "debug"

    invoke-direct {v0, v1, v8, v7}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->z:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "target"

    invoke-direct {v0, v1, v10, v9}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->A:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v8, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->B:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "appId"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v8, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->C:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "appVersion"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v8, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->D:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "packageName"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->E:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "token"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v8, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->F:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "deviceId"

    invoke-direct {v0, v1, v8, v6}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->G:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "aliasName"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v8, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->H:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "sdkVersion"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v8, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->I:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "regId"

    invoke-direct {v0, v1, v8, v8}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->J:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "pushSdkVersionName"

    invoke-direct {v0, v1, v8, v10}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->K:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "pushSdkVersionCode"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v6, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->L:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "appVersionCode"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v6, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->M:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "androidId"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v8, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->N:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "imei"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v8, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->O:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "serial"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v8, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->P:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "imeiMd5"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v8, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->Q:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "spaceId"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v6, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->R:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "reason"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v6, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->S:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "connectionAttrs"

    const/16 v2, 0xd

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->T:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "cleanOldRegInfo"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v9, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->U:Lb/a/a/b/b;

    new-instance v0, Lb/a/a/b/b;

    const-string v1, "oldRegId"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v8, v2}, Lb/a/a/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/j/a/ak;->V:Lb/a/a/b/b;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/j/a/ak$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->a:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "debug"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v8}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->b:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "target"

    new-instance v4, Lb/a/a/a/g;

    const-class v5, Lcom/xiaomi/j/a/y;

    invoke-direct {v4, v10, v5}, Lb/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->c:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "id"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v8}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->d:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "appId"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v8}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->e:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "appVersion"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v8}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->f:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "packageName"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v8}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->g:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "token"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v8}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->h:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "deviceId"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v8}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->i:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "aliasName"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v8}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->j:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "sdkVersion"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v8}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->k:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "regId"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v8}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->l:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "pushSdkVersionName"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v8}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->m:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "pushSdkVersionCode"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v6}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->n:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "appVersionCode"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v6}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->o:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "androidId"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v8}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->p:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "imei"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v8}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->q:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "serial"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v8}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->r:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "imeiMd5"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v8}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->s:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "spaceId"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v6}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->t:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "reason"

    new-instance v4, Lb/a/a/a/a;

    const/16 v5, 0x10

    const-class v6, Lcom/xiaomi/j/a/x;

    invoke-direct {v4, v5, v6}, Lb/a/a/a/a;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->u:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "connectionAttrs"

    new-instance v4, Lb/a/a/a/e;

    const/16 v5, 0xd

    new-instance v6, Lb/a/a/a/c;

    invoke-direct {v6, v8}, Lb/a/a/a/c;-><init>(B)V

    new-instance v7, Lb/a/a/a/c;

    invoke-direct {v7, v8}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v4, v5, v6, v7}, Lb/a/a/a/e;-><init>(BLb/a/a/a/c;Lb/a/a/a/c;)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->v:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "cleanOldRegInfo"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v9}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/j/a/ak$a;->w:Lcom/xiaomi/j/a/ak$a;

    new-instance v2, Lb/a/a/a/b;

    const-string v3, "oldRegId"

    new-instance v4, Lb/a/a/a/c;

    invoke-direct {v4, v8}, Lb/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;BLb/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/j/a/ak;->x:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/j/a/ak;

    sget-object v1, Lcom/xiaomi/j/a/ak;->x:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/j/a/ak;->W:Ljava/util/BitSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/j/a/ak;->v:Z

    return-void
.end method


# virtual methods
.method public a(I)Lcom/xiaomi/j/a/ak;
    .locals 1

    iput p1, p0, Lcom/xiaomi/j/a/ak;->m:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/j/a/ak;->a(Z)V

    return-object p0
.end method

.method public a(Lcom/xiaomi/j/a/x;)Lcom/xiaomi/j/a/ak;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/ak;->t:Lcom/xiaomi/j/a/x;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/j/a/ak;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/ak;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lb/a/a/b/e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/f;
        }
    .end annotation

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/16 v5, 0xb

    invoke-virtual {p1}, Lb/a/a/b/e;->g()Lb/a/a/b/j;

    :goto_0
    invoke-virtual {p1}, Lb/a/a/b/e;->i()Lb/a/a/b/b;

    move-result-object v0

    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lb/a/a/b/e;->h()V

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->z()V

    return-void

    :cond_0
    iget-short v1, v0, Lb/a/a/b/b;->c:S

    sparse-switch v1, :sswitch_data_0

    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    :goto_1
    invoke-virtual {p1}, Lb/a/a/b/e;->j()V

    goto :goto_0

    :sswitch_0
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v5, :cond_1

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/ak;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :sswitch_1
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    new-instance v0, Lcom/xiaomi/j/a/y;

    invoke-direct {v0}, Lcom/xiaomi/j/a/y;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/j/a/ak;->b:Lcom/xiaomi/j/a/y;

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->b:Lcom/xiaomi/j/a/y;

    invoke-virtual {v0, p1}, Lcom/xiaomi/j/a/y;->a(Lb/a/a/b/e;)V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :sswitch_2
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v5, :cond_3

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/ak;->c:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :sswitch_3
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v5, :cond_4

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/ak;->d:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :sswitch_4
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v5, :cond_5

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/ak;->e:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :sswitch_5
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v5, :cond_6

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/ak;->f:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto :goto_1

    :sswitch_6
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v5, :cond_7

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/ak;->g:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    :sswitch_7
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v5, :cond_8

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/ak;->h:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    :sswitch_8
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v5, :cond_9

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/ak;->i:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    :sswitch_9
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v5, :cond_a

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/ak;->j:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    :sswitch_a
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v5, :cond_b

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/ak;->k:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    :sswitch_b
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v5, :cond_c

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/ak;->l:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    :sswitch_c
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v7, :cond_d

    invoke-virtual {p1}, Lb/a/a/b/e;->t()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/j/a/ak;->m:I

    invoke-virtual {p0, v6}, Lcom/xiaomi/j/a/ak;->a(Z)V

    goto/16 :goto_1

    :cond_d
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    :sswitch_d
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v7, :cond_e

    invoke-virtual {p1}, Lb/a/a/b/e;->t()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/j/a/ak;->n:I

    invoke-virtual {p0, v6}, Lcom/xiaomi/j/a/ak;->b(Z)V

    goto/16 :goto_1

    :cond_e
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    :sswitch_e
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v5, :cond_f

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/ak;->o:Ljava/lang/String;

    goto/16 :goto_1

    :cond_f
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    :sswitch_f
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v5, :cond_10

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/ak;->p:Ljava/lang/String;

    goto/16 :goto_1

    :cond_10
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    :sswitch_10
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v5, :cond_11

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/ak;->q:Ljava/lang/String;

    goto/16 :goto_1

    :cond_11
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    :sswitch_11
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v5, :cond_12

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/ak;->r:Ljava/lang/String;

    goto/16 :goto_1

    :cond_12
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    :sswitch_12
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v7, :cond_13

    invoke-virtual {p1}, Lb/a/a/b/e;->t()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/j/a/ak;->s:I

    invoke-virtual {p0, v6}, Lcom/xiaomi/j/a/ak;->c(Z)V

    goto/16 :goto_1

    :cond_13
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    :sswitch_13
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v7, :cond_14

    invoke-virtual {p1}, Lb/a/a/b/e;->t()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/j/a/x;->a(I)Lcom/xiaomi/j/a/x;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/ak;->t:Lcom/xiaomi/j/a/x;

    goto/16 :goto_1

    :cond_14
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    :sswitch_14
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_16

    invoke-virtual {p1}, Lb/a/a/b/e;->k()Lb/a/a/b/d;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lb/a/a/b/d;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/j/a/ak;->u:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lb/a/a/b/d;->c:I

    if-ge v0, v2, :cond_15

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/j/a/ak;->u:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_15
    invoke-virtual {p1}, Lb/a/a/b/e;->l()V

    goto/16 :goto_1

    :cond_16
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    :sswitch_15
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    invoke-virtual {p1}, Lb/a/a/b/e;->q()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/j/a/ak;->v:Z

    invoke-virtual {p0, v6}, Lcom/xiaomi/j/a/ak;->d(Z)V

    goto/16 :goto_1

    :cond_17
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    :sswitch_16
    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-ne v1, v5, :cond_18

    invoke-virtual {p1}, Lb/a/a/b/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/j/a/ak;->w:Ljava/lang/String;

    goto/16 :goto_1

    :cond_18
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    invoke-static {p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;B)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x64 -> :sswitch_14
        0x65 -> :sswitch_15
        0x66 -> :sswitch_16
    .end sparse-switch
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->W:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/j/a/ak;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->a()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ak;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/ak;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->b()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ak;->b:Lcom/xiaomi/j/a/y;

    iget-object v2, p1, Lcom/xiaomi/j/a/ak;->b:Lcom/xiaomi/j/a/y;

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/y;->a(Lcom/xiaomi/j/a/y;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->c()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ak;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/ak;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->e()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->e()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ak;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/ak;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->f()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->f()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ak;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/ak;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->g()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->g()Z

    move-result v2

    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ak;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/ak;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->i()Z

    move-result v2

    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ak;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/ak;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->j()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->j()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ak;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/ak;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->k()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->k()Z

    move-result v2

    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ak;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/ak;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->l()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->l()Z

    move-result v2

    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ak;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/ak;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_15
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->m()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->m()Z

    move-result v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_17

    :cond_16
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ak;->k:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/ak;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_17
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->n()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->n()Z

    move-result v2

    if-nez v1, :cond_18

    if-eqz v2, :cond_19

    :cond_18
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ak;->l:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/ak;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_19
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->o()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->o()Z

    move-result v2

    if-nez v1, :cond_1a

    if-eqz v2, :cond_1b

    :cond_1a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/xiaomi/j/a/ak;->m:I

    iget v2, p1, Lcom/xiaomi/j/a/ak;->m:I

    if-ne v1, v2, :cond_0

    :cond_1b
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->p()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->p()Z

    move-result v2

    if-nez v1, :cond_1c

    if-eqz v2, :cond_1d

    :cond_1c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/xiaomi/j/a/ak;->n:I

    iget v2, p1, Lcom/xiaomi/j/a/ak;->n:I

    if-ne v1, v2, :cond_0

    :cond_1d
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->q()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->q()Z

    move-result v2

    if-nez v1, :cond_1e

    if-eqz v2, :cond_1f

    :cond_1e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ak;->o:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/ak;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1f
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->r()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->r()Z

    move-result v2

    if-nez v1, :cond_20

    if-eqz v2, :cond_21

    :cond_20
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ak;->p:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/ak;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_21
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->s()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->s()Z

    move-result v2

    if-nez v1, :cond_22

    if-eqz v2, :cond_23

    :cond_22
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ak;->q:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/ak;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_23
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->t()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->t()Z

    move-result v2

    if-nez v1, :cond_24

    if-eqz v2, :cond_25

    :cond_24
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ak;->r:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/ak;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_25
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->u()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->u()Z

    move-result v2

    if-nez v1, :cond_26

    if-eqz v2, :cond_27

    :cond_26
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/xiaomi/j/a/ak;->s:I

    iget v2, p1, Lcom/xiaomi/j/a/ak;->s:I

    if-ne v1, v2, :cond_0

    :cond_27
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->v()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->v()Z

    move-result v2

    if-nez v1, :cond_28

    if-eqz v2, :cond_29

    :cond_28
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ak;->t:Lcom/xiaomi/j/a/x;

    iget-object v2, p1, Lcom/xiaomi/j/a/ak;->t:Lcom/xiaomi/j/a/x;

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/x;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_29
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->w()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->w()Z

    move-result v2

    if-nez v1, :cond_2a

    if-eqz v2, :cond_2b

    :cond_2a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ak;->u:Ljava/util/Map;

    iget-object v2, p1, Lcom/xiaomi/j/a/ak;->u:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2b
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->x()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->x()Z

    move-result v2

    if-nez v1, :cond_2c

    if-eqz v2, :cond_2d

    :cond_2c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/xiaomi/j/a/ak;->v:Z

    iget-boolean v2, p1, Lcom/xiaomi/j/a/ak;->v:Z

    if-ne v1, v2, :cond_0

    :cond_2d
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->y()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->y()Z

    move-result v2

    if-nez v1, :cond_2e

    if-eqz v2, :cond_2f

    :cond_2e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/j/a/ak;->w:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/ak;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2f
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/j/a/ak;)I
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
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/j/a/ak;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->b:Lcom/xiaomi/j/a/y;

    iget-object v1, p1, Lcom/xiaomi/j/a/ak;->b:Lcom/xiaomi/j/a/y;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/j/a/ak;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/j/a/ak;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/j/a/ak;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/j/a/ak;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/j/a/ak;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/j/a/ak;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->i:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/j/a/ak;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->l()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->j:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/j/a/ak;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->m()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/j/a/ak;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->n()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->l:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/j/a/ak;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->o()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->o()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/xiaomi/j/a/ak;->m:I

    iget v1, p1, Lcom/xiaomi/j/a/ak;->m:I

    invoke-static {v0, v1}, Lb/a/a/b;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->p()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->p()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/xiaomi/j/a/ak;->n:I

    iget v1, p1, Lcom/xiaomi/j/a/ak;->n:I

    invoke-static {v0, v1}, Lb/a/a/b;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->q()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->q()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->q()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->o:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/j/a/ak;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->r()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->r()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->r()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->p:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/j/a/ak;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->s()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->s()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->s()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->q:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/j/a/ak;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_12
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->t()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->t()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->t()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->r:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/j/a/ak;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->u()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->u()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->u()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/xiaomi/j/a/ak;->s:I

    iget v1, p1, Lcom/xiaomi/j/a/ak;->s:I

    invoke-static {v0, v1}, Lb/a/a/b;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_14
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->v()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->v()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->v()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->t:Lcom/xiaomi/j/a/x;

    iget-object v1, p1, Lcom/xiaomi/j/a/ak;->t:Lcom/xiaomi/j/a/x;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_15
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->w()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->w()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->w()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->u:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/j/a/ak;->u:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_16
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->x()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->x()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->x()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/xiaomi/j/a/ak;->v:Z

    iget-boolean v1, p1, Lcom/xiaomi/j/a/ak;->v:Z

    invoke-static {v0, v1}, Lb/a/a/b;->a(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_17
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->y()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/ak;->y()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->y()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->w:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/j/a/ak;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(I)Lcom/xiaomi/j/a/ak;
    .locals 1

    iput p1, p0, Lcom/xiaomi/j/a/ak;->n:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/j/a/ak;->b(Z)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/j/a/ak;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/ak;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lb/a/a/b/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/f;
        }
    .end annotation

    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->z()V

    sget-object v0, Lcom/xiaomi/j/a/ak;->y:Lb/a/a/b/j;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/j;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/j/a/ak;->z:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->b:Lcom/xiaomi/j/a/y;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/j/a/ak;->A:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->b:Lcom/xiaomi/j/a/y;

    invoke-virtual {v0, p1}, Lcom/xiaomi/j/a/y;->b(Lb/a/a/b/e;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/j/a/ak;->B:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/j/a/ak;->C:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaomi/j/a/ak;->D:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/xiaomi/j/a/ak;->E:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaomi/j/a/ak;->F:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/xiaomi/j/a/ak;->G:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->i:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/xiaomi/j/a/ak;->H:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->j:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->l()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/xiaomi/j/a/ak;->I:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_9
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->k:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->m()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/xiaomi/j/a/ak;->J:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_a
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->l:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->n()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/xiaomi/j/a/ak;->K:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->o()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/xiaomi/j/a/ak;->L:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget v0, p0, Lcom/xiaomi/j/a/ak;->m:I

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(I)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->p()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/xiaomi/j/a/ak;->M:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget v0, p0, Lcom/xiaomi/j/a/ak;->n:I

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(I)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_d
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->o:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->q()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/xiaomi/j/a/ak;->N:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_e
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->p:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->r()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/xiaomi/j/a/ak;->O:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_f
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->q:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->s()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/xiaomi/j/a/ak;->P:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_10
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->r:Ljava/lang/String;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->t()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/xiaomi/j/a/ak;->Q:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->u()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/xiaomi/j/a/ak;->R:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget v0, p0, Lcom/xiaomi/j/a/ak;->s:I

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(I)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_12
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->t:Lcom/xiaomi/j/a/x;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->v()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/xiaomi/j/a/ak;->S:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->t:Lcom/xiaomi/j/a/x;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/x;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(I)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_13
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->u:Ljava/util/Map;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->w()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/xiaomi/j/a/ak;->T:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    new-instance v0, Lb/a/a/b/d;

    iget-object v1, p0, Lcom/xiaomi/j/a/ak;->u:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v2, v2, v1}, Lb/a/a/b/d;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/d;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_14
    invoke-virtual {p1}, Lb/a/a/b/e;->d()V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_15
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->x()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/xiaomi/j/a/ak;->U:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-boolean v0, p0, Lcom/xiaomi/j/a/ak;->v:Z

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Z)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_16
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->w:Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->y()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/xiaomi/j/a/ak;->V:Lb/a/a/b/b;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Lb/a/a/b/b;)V

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/a/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b/e;->b()V

    :cond_17
    invoke-virtual {p1}, Lb/a/a/b/e;->c()V

    invoke-virtual {p1}, Lb/a/a/b/e;->a()V

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->W:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->b:Lcom/xiaomi/j/a/y;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Lcom/xiaomi/j/a/ak;
    .locals 1

    iput p1, p0, Lcom/xiaomi/j/a/ak;->s:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/j/a/ak;->c(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/j/a/ak;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/ak;->e:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->W:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/xiaomi/j/a/ak;

    invoke-virtual {p0, p1}, Lcom/xiaomi/j/a/ak;->b(Lcom/xiaomi/j/a/ak;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/j/a/ak;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/ak;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->W:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public e(Ljava/lang/String;)Lcom/xiaomi/j/a/ak;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/ak;->g:Ljava/lang/String;

    return-object p0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/xiaomi/j/a/ak;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/xiaomi/j/a/ak;

    invoke-virtual {p0, p1}, Lcom/xiaomi/j/a/ak;->a(Lcom/xiaomi/j/a/ak;)Z

    move-result v0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Lcom/xiaomi/j/a/ak;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/ak;->h:Ljava/lang/String;

    return-object p0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)Lcom/xiaomi/j/a/ak;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/ak;->l:Ljava/lang/String;

    return-object p0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)Lcom/xiaomi/j/a/ak;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/ak;->o:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->g:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i(Ljava/lang/String;)Lcom/xiaomi/j/a/ak;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/ak;->p:Ljava/lang/String;

    return-object p0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j(Ljava/lang/String;)Lcom/xiaomi/j/a/ak;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/ak;->q:Ljava/lang/String;

    return-object p0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k(Ljava/lang/String;)Lcom/xiaomi/j/a/ak;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/j/a/ak;->r:Ljava/lang/String;

    return-object p0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->i:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->W:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->W:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->r:Ljava/lang/String;

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

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "XmPushActionRegistration("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "debug:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->a:Ljava/lang/String;

    if-nez v0, :cond_15

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->b()Z

    move-result v3

    if-eqz v3, :cond_28

    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "target:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->b:Lcom/xiaomi/j/a/y;

    if-nez v0, :cond_16

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-nez v1, :cond_2

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, "id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->c:Ljava/lang/String;

    if-nez v0, :cond_17

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "appId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->d:Ljava/lang/String;

    if-nez v0, :cond_18

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "appVersion:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->e:Ljava/lang/String;

    if-nez v0, :cond_19

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "packageName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->f:Ljava/lang/String;

    if-nez v0, :cond_1a

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_5
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "token:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->g:Ljava/lang/String;

    if-nez v0, :cond_1b

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "deviceId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->h:Ljava/lang/String;

    if-nez v0, :cond_1c

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_7
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "aliasName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->i:Ljava/lang/String;

    if-nez v0, :cond_1d

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_8
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "sdkVersion:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->j:Ljava/lang/String;

    if-nez v0, :cond_1e

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_9
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->m()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "regId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->k:Ljava/lang/String;

    if-nez v0, :cond_1f

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_a
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "pushSdkVersionName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->l:Ljava/lang/String;

    if-nez v0, :cond_20

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_b
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->o()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "pushSdkVersionCode:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaomi/j/a/ak;->m:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->p()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "appVersionCode:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaomi/j/a/ak;->n:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->q()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "androidId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->o:Ljava/lang/String;

    if-nez v0, :cond_21

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    :goto_c
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->r()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "imei:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->p:Ljava/lang/String;

    if-nez v0, :cond_22

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    :goto_d
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->s()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "serial:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->q:Ljava/lang/String;

    if-nez v0, :cond_23

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    :goto_e
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->t()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "imeiMd5:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->r:Ljava/lang/String;

    if-nez v0, :cond_24

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    :goto_f
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->u()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "spaceId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaomi/j/a/ak;->s:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->v()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "reason:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->t:Lcom/xiaomi/j/a/x;

    if-nez v0, :cond_25

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    :goto_10
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->w()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "connectionAttrs:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->u:Ljava/util/Map;

    if-nez v0, :cond_26

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    :goto_11
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->x()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cleanOldRegInfo:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/xiaomi/j/a/ak;->v:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->y()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "oldRegId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->w:Ljava/lang/String;

    if-nez v0, :cond_27

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    :goto_12
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->b:Lcom/xiaomi/j/a/y;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_17
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_18
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_19
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_1a
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_1b
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_1c
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_1d
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->i:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_1e
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_1f
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->k:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_20
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->l:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :cond_21
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->o:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :cond_22
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->p:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_23
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->q:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    :cond_24
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->r:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    :cond_25
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->t:Lcom/xiaomi/j/a/x;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    :cond_26
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->u:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    :cond_27
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->w:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    :cond_28
    move v1, v0

    goto/16 :goto_1
.end method

.method public u()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->W:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->t:Lcom/xiaomi/j/a/x;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->u:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->W:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->w:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/f;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lb/a/a/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/j/a/ak;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lb/a/a/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'token\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/j/a/ak;->toString()Ljava/lang/String;

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
