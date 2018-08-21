.class public abstract Lcom/miui/home/launcher/assistant/request/core/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDescription:Ljava/lang/String;

.field private mRequestCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/request/core/BaseRequest;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/miui/home/launcher/assistant/request/core/BaseRequest;->mRequestCode:I

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/request/core/BaseRequest;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/request/core/BaseRequest;->mRequestCode:I

    return v0
.end method

.method public abstract request()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
