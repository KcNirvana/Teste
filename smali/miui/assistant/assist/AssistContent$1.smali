.class final Lmiui/assistant/assist/AssistContent$1;
.super Ljava/lang/Object;
.source "AssistContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/assistant/assist/AssistContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lmiui/assistant/assist/AssistContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lmiui/assistant/assist/AssistContent$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/assistant/assist/AssistContent;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/assistant/assist/AssistContent;
    .locals 1

    new-instance v0, Lmiui/assistant/assist/AssistContent;

    invoke-direct {v0, p1}, Lmiui/assistant/assist/AssistContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lmiui/assistant/assist/AssistContent$1;->newArray(I)[Lmiui/assistant/assist/AssistContent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmiui/assistant/assist/AssistContent;
    .locals 1

    new-array v0, p1, [Lmiui/assistant/assist/AssistContent;

    return-object v0
.end method
