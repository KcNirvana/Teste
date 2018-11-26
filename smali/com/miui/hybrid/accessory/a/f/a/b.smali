.class public Lcom/miui/hybrid/accessory/a/f/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static bhx:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:B

.field public final c:Lcom/miui/hybrid/accessory/a/f/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/hybrid/accessory/a/f/a/b;->bhx:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/hybrid/accessory/a/f/a/b;->a:Ljava/lang/String;

    int-to-byte v0, p2

    iput-byte v0, p0, Lcom/miui/hybrid/accessory/a/f/a/b;->b:B

    iput-object p3, p0, Lcom/miui/hybrid/accessory/a/f/a/b;->c:Lcom/miui/hybrid/accessory/a/f/a/c;

    return-void
.end method

.method public static bDq(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 1

    sget-object v0, Lcom/miui/hybrid/accessory/a/f/a/b;->bhx:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
