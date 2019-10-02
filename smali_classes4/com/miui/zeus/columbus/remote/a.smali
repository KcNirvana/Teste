.class public abstract Lcom/miui/zeus/columbus/remote/a;
.super Ljava/lang/Object;
.source "HttpClient.java"


# static fields
.field protected static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/miui/zeus/columbus/util/p;->f:I

    mul-int/lit8 v0, v0, 0x1e

    sput v0, Lcom/miui/zeus/columbus/remote/a;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/miui/zeus/columbus/remote/HttpRequest;)Lcom/miui/zeus/columbus/remote/b;
.end method
