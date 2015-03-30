using System;
using TechTalk.SpecFlow;
using My;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace My.Spec
{
    [Binding]
    public class OracleSteps
    {
        oracle gus;
        string answer;

        [Given(@"an oracle")]
        public void GivenAnOracle()
        {
            gus = new oracle();
            Assert.IsNotNull(gus);
        }

        [When(@"I ask it to speak")]
        public void WhenIAskItToSpeak()
        {
            answer = gus.speak();
        }

        [Then(@"wisdom is apparent")]
        public void ThenWisdomIsApparent()
        {
            Assert.AreEqual("bla", answer);
        }
    }
}
