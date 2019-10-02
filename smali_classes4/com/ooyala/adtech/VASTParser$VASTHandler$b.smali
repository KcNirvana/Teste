.class final Lcom/ooyala/adtech/VASTParser$VASTHandler$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/adtech/VASTParser$VASTHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ooyala/adtech/VASTParser$VASTHandler$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I = 0x1

.field public static final enum b:I = 0x2

.field public static final enum c:I = 0x3

.field public static final enum d:I = 0x4

.field private static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lcom/ooyala/adtech/VASTParser$VASTHandler$b;->a:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/ooyala/adtech/VASTParser$VASTHandler$b;->b:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/ooyala/adtech/VASTParser$VASTHandler$b;->c:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/ooyala/adtech/VASTParser$VASTHandler$b;->d:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lcom/ooyala/adtech/VASTParser$VASTHandler$b;->e:[I

    return-void
.end method
