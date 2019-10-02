.class interface abstract Lcom/xiaomi/phonenum/PhoneNumGetter;
.super Ljava/lang/Object;
.source "PhoneNumGetter.java"


# virtual methods
.method public abstract blockObtainPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract dispose()V
.end method

.method public abstract invalidatePhoneNum(ILcom/xiaomi/phonenum/bean/PhoneNum;)Z
.end method

.method public abstract peekPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;
.end method

.method public abstract setUp(Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;)V
.end method
