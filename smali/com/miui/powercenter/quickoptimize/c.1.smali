.class public Lcom/miui/powercenter/quickoptimize/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aDi:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/powercenter/quickoptimize/c;->aDi:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aOx(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lcom/miui/powercenter/quickoptimize/c;->aDi:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static aOy(Ljava/lang/Object;Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/powercenter/quickoptimize/c;->aDi:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/miui/powercenter/quickoptimize/c;->aDi:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
