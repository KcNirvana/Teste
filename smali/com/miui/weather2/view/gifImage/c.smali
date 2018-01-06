.class public Lcom/miui/weather2/view/gifImage/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[I

.field b:I

.field c:I

.field d:Lcom/miui/weather2/view/gifImage/b;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/weather2/view/gifImage/b;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field g:I

.field h:Z

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/view/gifImage/c;->a:[I

    iput v1, p0, Lcom/miui/weather2/view/gifImage/c;->b:I

    iput v1, p0, Lcom/miui/weather2/view/gifImage/c;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/gifImage/c;->e:Ljava/util/List;

    iput v1, p0, Lcom/miui/weather2/view/gifImage/c;->m:I

    return-void
.end method
