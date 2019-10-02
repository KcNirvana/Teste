.class public Lcom/kaltura/playkit/PKError;
.super Ljava/lang/Object;
.source "PKError.java"


# instance fields
.field public final errorType:Ljava/lang/Enum;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final exception:Ljava/lang/Throwable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final message:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Enum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/PKError;->errorType:Ljava/lang/Enum;

    iput-object p2, p0, Lcom/kaltura/playkit/PKError;->message:Ljava/lang/String;

    iput-object p3, p0, Lcom/kaltura/playkit/PKError;->exception:Ljava/lang/Throwable;

    return-void
.end method
