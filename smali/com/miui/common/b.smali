.class public Lcom/miui/common/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static aCw:Ljava/lang/String;

.field public static aCx:Z

.field public static aCy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/miui/common/b;->aCy:Z

    const-string/jumbo v0, ""

    sput-object v0, Lcom/miui/common/b;->aCw:Ljava/lang/String;

    sput-boolean v1, Lcom/miui/common/b;->aCx:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
