.class public final Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "LensServiceClientEventData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private targetServiceApiVersion_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;->clear()Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;->bitField0_:I

    iput v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;->targetServiceApiVersion_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;->cachedSize:I

    return-object p0
.end method

.method public clone()Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;
    .locals 3

    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;->clone()Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;->clone()Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;->clone()Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;->targetServiceApiVersion_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;->targetServiceApiVersion_:I

    iget v1, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;->bitField0_:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;

    move-result-object v0

    return-object v0
.end method

.method public setTargetServiceApiVersion(I)Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;
    .locals 1

    iget v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;->bitField0_:I

    iput p1, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;->targetServiceApiVersion_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    :goto_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/nano/LensServiceClientEventData;->targetServiceApiVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    goto :goto_0
.end method