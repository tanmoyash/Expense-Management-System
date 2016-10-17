<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Update</fullName>
        <description>Email Update</description>
        <protected>true</protected>
        <recipients>
            <field>Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/ExpenseMember</template>
    </alerts>
    <fieldUpdates>
        <fullName>Email_Copy</fullName>
        <description>Email copy from member email Id to Expense Member email..</description>
        <field>Email__c</field>
        <formula>Member__r.Email_Id__c</formula>
        <name>Email Copy</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Email Alert</fullName>
        <actions>
            <name>Email_Update</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Expense_Member__c.Name</field>
            <operation>notEqual</operation>
            <value>NULL</value>
        </criteriaItems>
        <description>Email firing when a record is inserted in Expense Member</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Field Update</fullName>
        <actions>
            <name>Email_Copy</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Member__c.Email_Id__c</field>
            <operation>notEqual</operation>
            <value>NULL</value>
        </criteriaItems>
        <description>Workflow Rule for Field Update</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
